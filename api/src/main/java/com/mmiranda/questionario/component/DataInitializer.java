package com.mmiranda.questionario.component;

import com.mmiranda.questionario.entity.Usuario;
import com.mmiranda.questionario.repository.UsuarioRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    private final UsuarioRepository usuarioRepository;

    public DataInitializer(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if (usuarioRepository.findByUsername("juliana").isEmpty()) {
            Usuario admin = new Usuario();
            admin.setUsername("juliana");
            admin.setPassword("teste123");
            usuarioRepository.save(admin);
            System.out.println("Usuário 'juliana' criado com sucesso.");
        }
    }
}
