package com.mmiranda.questionario.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Convite {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String token;

    private String nomeConvidado;
    
    // Opcional: Se quisermos já deixar pre-cadastrado o telefone
    private String telefoneConvidado;

    @ManyToOne
    @JoinColumn(name = "questionario_id")
    private Questionario questionario;

    private boolean usado = false;

    private LocalDateTime dataCriacao = LocalDateTime.now();
    private LocalDateTime dataUso;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getNomeConvidado() {
        return nomeConvidado;
    }

    public void setNomeConvidado(String nomeConvidado) {
        this.nomeConvidado = nomeConvidado;
    }

    public String getTelefoneConvidado() {
        return telefoneConvidado;
    }

    public void setTelefoneConvidado(String telefoneConvidado) {
        this.telefoneConvidado = telefoneConvidado;
    }

    public Questionario getQuestionario() {
        return questionario;
    }

    public void setQuestionario(Questionario questionario) {
        this.questionario = questionario;
    }

    public boolean isUsado() {
        return usado;
    }

    public void setUsado(boolean usado) {
        this.usado = usado;
    }

    public LocalDateTime getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(LocalDateTime dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    public LocalDateTime getDataUso() {
        return dataUso;
    }

    public void setDataUso(LocalDateTime dataUso) {
        this.dataUso = dataUso;
    }
}
