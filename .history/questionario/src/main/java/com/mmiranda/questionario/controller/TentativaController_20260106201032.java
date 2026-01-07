package com.mmiranda.questionario.controller;

import com.mmiranda.questionario.dto.TentativaDTO;
import com.mmiranda.questionario.entity.*;
import com.mmiranda.questionario.repository.*;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/tentativas")
@CrossOrigin(origins = "*")
public class TentativaController {

    private final TentativaRepository tentativaRepository;
    private final ConviteRepository conviteRepository;
    private final QuestionarioRepository questionarioRepository;
    private final PerguntaRepository perguntaRepository;
    private final OpcaoRepository opcaoRepository;

    public TentativaController(TentativaRepository tentativaRepository, 
                               ConviteRepository conviteRepository,
                               QuestionarioRepository questionarioRepository,
                               PerguntaRepository perguntaRepository,
                               OpcaoRepository opcaoRepository) {
        this.tentativaRepository = tentativaRepository;
        this.conviteRepository = conviteRepository;
        this.questionarioRepository = questionarioRepository;
        this.perguntaRepository = perguntaRepository;
        this.opcaoRepository = opcaoRepository;
    }

    @PostMapping
    @Transactional
    public ResponseEntity<?> salvarTentativa(@RequestBody TentativaDTO dto) {
        // 1. Identificar o contexto (via Token ou ID Público)
        Questionario questionario = null;
        Convite convite = null;

        if (dto.getToken() != null && !dto.getToken().isEmpty()) {
            convite = conviteRepository.findByToken(dto.getToken())
                    .orElseThrow(() -> new RuntimeException("Convite inválido"));
            
            if (convite.isUsado()) {
                return ResponseEntity.status(410).body("Convite já utilizado.");
            }
            
            questionario = convite.getQuestionario();
            // Identificação implícita pelo convite. 
            // Para simplificar, não estamos criando Participante na tabela para convites, 
            // mas poderíamos linkar se o Convite tivesse um Participante real vinculado.
            // No modelo atual, Convite tem nome/tele soltos.
        } else if (dto.getQuestionarioId() != null) {
            // Modo Público (Legado)
            questionario = questionarioRepository.findById(dto.getQuestionarioId())
                    .orElseThrow(() -> new RuntimeException("Questionário não encontrado"));
        } else {
            return ResponseEntity.badRequest().body("Token ou QuestionarioID obrigatórios");
        }

        // 2. Criar a Tentativa
        Tentativa tentativa = new Tentativa();
        tentativa.setQuestionario(questionario);
        tentativa.setConvite(convite);
        tentativa.setDataHora(LocalDateTime.now());
        
        // 3. Processar Respostas e Calcular Score
        List<Resposta> respostasEntidade = new ArrayList<>();
        double scoreTotal = 0.0;
        double vata = 0, pitta = 0, kapha = 0;

        for (Map.Entry<Long, Long> entry : dto.getRespostas().entrySet()) {
            Long perguntaId = entry.getKey();
            Long opcaoId = entry.getValue();

            Pergunta pergunta = perguntaRepository.findById(perguntaId).orElse(null);
            Opcao opcao = opcaoRepository.findById(opcaoId).orElse(null);

            if (pergunta != null && opcao != null) {
                Resposta r = new Resposta();
                r.setTentativa(tentativa);
                r.setPergunta(pergunta);
                r.setOpcao(opcao);
                respostasEntidade.add(r);

                scoreTotal += opcao.getPeso();
                
                // Contabilização específica para Ayurveda (simples)
                if (opcao.getPeso() == 1.0) vata++;
                if (opcao.getPeso() == 2.0) pitta++;
                if (opcao.getPeso() == 3.0) kapha++;
            }
        }

        tentativa.setRespostas(respostasEntidade);
        tentativa.setScoreTotal(scoreTotal);
        
        // 4. Salvar tudo
        Tentativa salva = tentativaRepository.save(tentativa);

        // 5. Invalidar convite se existir
        if (convite != null) {
            convite.setUsado(true);
            convite.setDataUso(LocalDateTime.now());
            conviteRepository.save(convite);
        }

        return ResponseEntity.ok(Map.of(
            "message", "Sucesso",
            "tentativaId", salva.getId(),
            "scores", Map.of("vata", vata, "pitta", pitta, "kapha", kapha)
        ));
    }
}
