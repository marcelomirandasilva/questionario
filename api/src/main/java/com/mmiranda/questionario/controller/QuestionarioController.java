package com.mmiranda.questionario.controller;

import com.mmiranda.questionario.entity.Questionario;
import com.mmiranda.questionario.repository.QuestionarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/questionarios")
@CrossOrigin(origins = "*") // Permite acesso do Frontend
public class QuestionarioController {

    @Autowired
    private QuestionarioRepository questionarioRepository;

    @GetMapping
    public List<Questionario> listar() {
        return questionarioRepository.findAll();
    }

    @PostMapping
    public Questionario criar(@RequestBody Questionario questionario) {
        return questionarioRepository.save(questionario);
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Questionario> buscarPorId(@PathVariable Long id) {
        return questionarioRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}
