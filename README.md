# Sistema de Questionários (Ayurveda)

Este projeto é uma aplicação web completa para aplicação e gerenciamento de questionários, com foco inicial em avaliação de constituição original Ayurveda (Doshas: Vata, Pitta, Kapha). O sistema permite que administradores convidem participantes e visualizem os resultados detalhados, calculando automaticamente os scores.

## 🚀 Tecnologias Utilizadas

### Backend (`/questionario`)
*   **Java 17**
*   **Spring Boot** (Web, Data JPA, Data REST)
*   **Banco de Dados**: MySQL (Produção/Dev) e H2 (Testes/Memória)
*   **Maven** (Gerenciamento de dependências e build)

### Frontend (`/frontend`)
*   **React** (Interface do usuário)
*   **Vite** (Build tool rápida e leve)
*   **React Router** (Navegação)
*   **Axios** (Comunicação com a API)
*   **CSS Puro** (Design responsivo e customizado)

---

## 🛠️ Pré-requisitos

Para rodar este projeto localmente, você precisará ter instalado:

*   [Java JDK 17+](https://adoptium.net/)
*   [Node.js](https://nodejs.org/) (versão 18+ recomendada)
*   [MySQL](https://www.mysql.com/) (ou configurar `application.properties` para usar outro banco)

---

## 🏁 Como Rodar o Projeto

### 1. Configuração do Backend

1.  Navegue até a pasta do backend:
    ```bash
    cd questionario
    ```
2.  Verifique as configurações de banco de dados em `src/main/resources/application.properties`. Certifique-se de que o MySQL está rodando e as credenciais estão corretas.
3.  Execute a aplicação usando o Maven Wrapper:
    *   **Windows (PowerShell/CMD):**
        ```powershell
        .\mvnw spring-boot:run
        ```
    *   **Linux/Mac:**
        ```bash
        ./mvnw spring-boot:run
        ```
    
    O servidor iniciará na porta `8080`.

### 2. Configuração do Frontend

1.  Abra um novo terminal e navegue até a pasta do frontend:
    ```bash
    cd frontend
    ```
2.  Instale as dependências:
    ```bash
    npm install
    ```
3.  Inicie o servidor de desenvolvimento:
    ```bash
    npm run dev
    ```
    
    O frontend estará disponível geralmente em `http://localhost:5173`.

---

## 📂 Estrutura do Projeto

*   `questionario/`: Código fonte do Backend (API REST).
    *   `src/main/java`: Controllers, Entities, Repositories e Services.
*   `frontend/`: Código fonte do Frontend (SPA React).
    *   `src/pages`: Páginas da aplicação (Login, Admin, Responder Questionário, Resultados).
    *   `src/services`: Configuração do Axios (`api.js`).
*   `parser.py`: Script auxiliar (Python) para manipulação/importação de questões (se aplicável).
*   `questoes.txt`: Arquivo de texto contendo a base de perguntas.

## ✨ Funcionalidades

*   **Painel Administrativo**: Criação de convites e visualização de todos os resultados.
*   **Questionário Dinâmico**: Interface para responder perguntas com diferentes pesos.
*   **Cálculo de Resultados**: Algoritmo automático para somar pontos de Vata, Pitta e Kapha.
*   **Visualização de Resultados**: Dashboard com scores e detalhamento das respostas.
