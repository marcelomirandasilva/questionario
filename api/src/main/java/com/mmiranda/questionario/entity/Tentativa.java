package com.mmiranda.questionario.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Tentativa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "participante_id")
    private Participante participante;

    @ManyToOne
    @JoinColumn(name = "questionario_id")
    private Questionario questionario;

    private LocalDateTime dataHora = LocalDateTime.now();

    private Double scoreTotal = 0.0;

    @OneToOne
    @JoinColumn(name = "convite_id")
    private Convite convite;

    @OneToMany(mappedBy = "tentativa", cascade = CascadeType.ALL)
    private java.util.List<Resposta> respostas;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Participante getParticipante() {
        return participante;
    }

    public void setParticipante(Participante participante) {
        this.participante = participante;
    }

    public Questionario getQuestionario() {
        return questionario;
    }

    public void setQuestionario(Questionario questionario) {
        this.questionario = questionario;
    }

    public LocalDateTime getDataHora() {
        return dataHora;
    }

    public void setDataHora(LocalDateTime dataHora) {
        this.dataHora = dataHora;
    }

    public Double getScoreTotal() {
        return scoreTotal;
    }

    public void setScoreTotal(Double scoreTotal) {
        this.scoreTotal = scoreTotal;
    }

    public Convite getConvite() {
        return convite;
    }

    public void setConvite(Convite convite) {
        this.convite = convite;
    }

    public java.util.List<Resposta> getRespostas() {
        return respostas;
    }

    public void setRespostas(java.util.List<Resposta> respostas) {
        this.respostas = respostas;
    }
}
