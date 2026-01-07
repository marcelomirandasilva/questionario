# Guia de Deploy - AWS EC2 (Servidor Único)

Este guia descreve o processo de publicação (deploy) da aplicação "Questionário" em uma instância EC2 na AWS. A arquitetura utilizada é **Nginx** como Proxy Reverso, servindo o Frontend (Arquivos Estáticos) e redirecionando chamadas de API para o Backend (Java Spring Boot).

## 1. Visão Geral da Estrutura no Servidor
*   **/var/www/questionario-front**: Arquivos estáticos do Frontend (React/Vite).
*   **/opt/questionario-api**: Arquivo `.jar` do Backend.
*   **Nginx (Porta 80)**: Recebe todas as conexões.
    *   Rota `/`: Entrega o Frontend.
    *   Rota `/api`: Redireciona para `localhost:8080` (Backend).

---

## 2. Preparação da Instância (EC2)

1.  **Criar Instância**:
    *   Acesse o console AWS EC2.
    *   Lance uma instância **Ubuntu Server 22.04 LTS**.
    *   Tipo: `t3.small` (Recomendado para Java + BD) ou `t2.micro` (Apenas para testes, pode faltar memória).
    *   **Security Group**: Libere as portas **22** (SSH), **80** (HTTP) e **443** (HTTPS).

2.  **Acessar a Instância via SSH**:
    ```bash
    ssh -i "sua-chave.pem" ubuntu@seu-ip-publico
    ```

3.  **Instalar Dependências**:
    ```bash
    sudo apt update
    sudo apt install openjdk-17-jdk nginx -y
    ```
    *Verifique o Java: `java -version` (Deve ser 17).*

---

## 3. Preparação do Banco de Dados

*Recomendação: Para produção, use AWS RDS. Para este guia, usaremos um banco local ou H2 (se configurado).*

Se precisar de PostgreSQL local na EC2:
```bash
sudo apt install postgresql postgresql-contrib -y
# Configurar senha e banco conforme seu application.properties
```

---

## 4. Deploy do Backend (API)

1.  **Gerar o Build (na sua máquina local)**:
    Navegue até a pasta `api` e execute:
    ```bash
    ./mvnw clean package -DskipTests
    ```
    *Isso criará o arquivo `.jar` em `target/`.*

2.  **Enviar para o Servidor**:
    Use o comando `scp` (ou FileZilla) para enviar o arquivo:
    ```bash
    scp -i "chave.pem" api/target/questionario-0.0.1-SNAPSHOT.jar ubuntu@seu-ip-publico:~/app-api.jar
    ```

3.  **Configurar no Servidor**:
    Mova para a pasta correta:
    ```bash
    sudo mkdir -p /opt/questionario-api
    sudo mv ~/app-api.jar /opt/questionario-api/app.jar
    ```

4.  **Criar Serviço (Systemd)** para rodar automaticamente:
    Crie o arquivo `/etc/systemd/system/questionario-api.service`:
    ```ini
    [Unit]
    Description=Questionario API
    After=network.target

    [Service]
    User=ubuntu
    ExecStart=/usr/bin/java -jar /opt/questionario-api/app.jar
    SuccessExitStatus=143
    Restart=always
    RestartSec=10

    [Install]
    WantedBy=multi-user.target
    ```
    *Ativar serviço:*
    ```bash
    sudo systemctl daemon-reload
    sudo systemctl enable questionario-api
    sudo systemctl start questionario-api
    ```

---

## 5. Deploy do Frontend

1.  **Configurar URL da API (Build Time)**:
    No seu projeto local `frontend`, certifique-se que as chamadas para o backend usem um caminho relativo (ex: `/api/...`) ou a variável de ambiente correta.
    *   Se usar Axios: `baseURL: '/api'` (O Nginx vai tratar isso).

2.  **Gerar o Build (na sua máquina local)**:
    Navegue até a pasta `frontend` e execute:
    ```bash
    npm run build
    ```
    *Isso gera a pasta `dist`.*

3.  **Enviar para o Servidor**:
    ```bash
    scp -i "chave.pem" -r frontend/dist/* ubuntu@seu-ip-publico:~/dist-temp
    ```

4.  **Configurar no Servidor**:
    ```bash
    sudo mkdir -p /var/www/questionario-front
    sudo cp -r ~/dist-temp/* /var/www/questionario-front/
    sudo chmod -R 755 /var/www/questionario-front
    ```

---

## 6. Configuração do Nginx (Reverse Proxy)

Edite a configuração: `sudo nano /etc/nginx/sites-available/default`

Substitua o conteúdo por:

```nginx
server {
    listen 80;
    server_name seu-dominio.com ou-seu-ip-publico;

    # Frontend (Arquivos Estáticos)
    location / {
        root /var/www/questionario-front;
        index index.html;
        try_files $uri $uri/ /index.html; # Importante para React Router
    }

    # Backend (API Reverso)
    location /api {
        # Reescreve /api/x para /x se seu backend não tiver prefixo /api
        # Se seu backend já espera /api, remova a linha rewrite.
        # rewrite ^/api/(.*)$ /$1 break; 

        proxy_pass http://localhost:8080;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
```

**Validar e Reiniciar Nginx**:
```bash
sudo nginx -t
sudo systemctl restart nginx
```

## 7. Conclusão
Acesse o IP público da sua instância no navegador. O Frontend deve carregar e conseguir comunicar com o Backend via `/api`.
