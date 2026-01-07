package com.mmiranda.questionario.controller;

import com.mmiranda.questionario.entity.Convite;
import com.mmiranda.questionario.entity.Questionario;
import com.mmiranda.questionario.repository.ConviteRepository;
import com.mmiranda.questionario.repository.QuestionarioRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/convites")
public class ConviteController {

    private final ConviteRepository conviteRepository;
    private final QuestionarioRepository questionarioRepository;

    public ConviteController(ConviteRepository conviteRepository, QuestionarioRepository questionarioRepository) {
        this.conviteRepository = conviteRepository;
        this.questionarioRepository = questionarioRepository;
    }

    // 1. Gerar um novo convite (Admin)
    @PostMapping("/gerar")
    public ResponseEntity<Convite> gerarConvite(@RequestBody Map<String, Object> payload) {
        Long questionarioId = ((Number) payload.get("questionarioId")).longValue();
        String nome = (String) payload.get("nome");
        String telefone = (String) payload.get("telefone");

        Questionario questionario = questionarioRepository.findById(questionarioId)
                .orElseThrow(() -> new RuntimeException("Questionário não encontrado"));

        Convite convite = new Convite();
        convite.setToken(UUID.randomUUID().toString());
        convite.setQuestionario(questionario);
        convite.setNomeConvidado(nome);
        convite.setTelefoneConvidado(telefone);
        
        return ResponseEntity.ok(conviteRepository.save(convite));
    }

    // 2. Validar token ao abrir o link
    @GetMapping("/validar/{token}")
    public ResponseEntity<Convite> validarConvite(@PathVariable String token) {
        return conviteRepository.findByToken(token)
                .map(convite -> {
                    if (convite.isUsado()) {
                        return ResponseEntity.status(410).body((Convite) null); // 410 Gone (Já usado)
                    }
                    return ResponseEntity.ok(convite);
                })
                .orElse(ResponseEntity.notFound().build());
    }

    // 3. (Opcional) Listar convites gerados para o Admin
    @GetMapping
    public Iterable<Convite> listarConvites() {
        return conviteRepository.findAll();
    }
}
