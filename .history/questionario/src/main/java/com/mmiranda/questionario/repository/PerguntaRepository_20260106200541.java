package com.mmiranda.questionario.repository;

import com.mmiranda.questionario.entity.Pergunta;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PerguntaRepository extends JpaRepository<Pergunta, Long> {
}
