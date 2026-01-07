package com.mmiranda.questionario.repository;

import com.mmiranda.questionario.entity.Convite;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface ConviteRepository extends JpaRepository<Convite, Long> {
    Optional<Convite> findByToken(String token);
}
