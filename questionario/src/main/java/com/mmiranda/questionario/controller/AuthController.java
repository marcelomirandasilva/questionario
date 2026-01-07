package com.mmiranda.questionario.controller;

import com.mmiranda.questionario.repository.UsuarioRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*")
public class AuthController {

    private final UsuarioRepository usuarioRepository;

    public AuthController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Map<String, String> credenciais) {
        String username = credenciais.get("username");
        String password = credenciais.get("password");

        return usuarioRepository.findByUsername(username)
                .map(u -> {
                    if (u.getPassword().equals(password)) {
                        return ResponseEntity.ok(Map.of(
                            "message", "Login realizado com sucesso",
                            "user", u.getUsername()
                            // Em produção, aqui retornaria um Token JWT
                        ));
                    } else {
                        return ResponseEntity.status(401).body("Senha incorreta");
                    }
                })
                .orElse(ResponseEntity.status(401).body("Usuário não encontrado"));
    }
}
