package com.mmiranda.questionario.config;

import com.mmiranda.questionario.entity.Usuario;
import com.mmiranda.questionario.repository.UsuarioRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SecurityDataInitializer implements CommandLineRunner {

    private final UsuarioRepository usuarioRepository;
    private final PasswordEncoder passwordEncoder;

    public SecurityDataInitializer(UsuarioRepository usuarioRepository, PasswordEncoder passwordEncoder) {
        this.usuarioRepository = usuarioRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void run(String... args) throws Exception {
        // Criar ou atualizar usuário admin padrão
        // Senha padrão inicial: 'admin123' (Você deve alterar isso depois)
        String username = "juliana";
        String rawPassword = "teste123"; // Senha original simples

        usuarioRepository.findByUsername(username).ifPresentOrElse(
            user -> {
                // Se o usuário existe, verificar se a senha já está encodada (começa com $2a$)
                if (!user.getPassword().startsWith("$2a$")) {
                    System.out.println("Atualizando senha do usuário admin para BCrypt...");
                    user.setPassword(passwordEncoder.encode(rawPassword));
                    usuarioRepository.save(user);
                }
            },
            () -> {
                System.out.println("Criando usuário admin padrão...");
                Usuario novo = new Usuario();
                novo.setUsername(username);
                novo.setPassword(passwordEncoder.encode(rawPassword));
                // Definir outros campos obrigatórios se houver
                usuarioRepository.save(novo);
            }
        );
    }
}
