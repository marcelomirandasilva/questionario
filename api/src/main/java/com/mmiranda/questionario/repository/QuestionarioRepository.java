package com.mmiranda.questionario.repository;

import com.mmiranda.questionario.entity.Questionario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionarioRepository extends JpaRepository<Questionario, Long> {
}
