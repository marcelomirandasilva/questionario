package com.mmiranda.questionario.dto;

import java.util.Map;

public class TentativaDTO {
    private String token;
    private Long questionarioId;
    private Map<Long, Long> respostas; // PerguntaId -> OpcaoId

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Long getQuestionarioId() {
        return questionarioId;
    }

    public void setQuestionarioId(Long questionarioId) {
        this.questionarioId = questionarioId;
    }

    public Map<Long, Long> getRespostas() {
        return respostas;
    }

    public void setRespostas(Map<Long, Long> respostas) {
        this.respostas = respostas;
    }
}
