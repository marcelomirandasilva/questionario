package com.mmiranda.questionario.projection;

import com.mmiranda.questionario.entity.Opcao;
import com.mmiranda.questionario.entity.Pergunta;
import com.mmiranda.questionario.entity.Questionario;
import org.springframework.data.rest.core.config.Projection;

import java.util.List;

@Projection(name = "completo", types = { Questionario.class })
public interface QuestionarioCompleto {
    Long getId();
    String getTitulo();
    String getDescricao();
    Boolean getAtivo();
    
    // Incluir lista de perguntas
    List<PerguntaResumo> getPerguntas();

    interface PerguntaResumo {
        Long getId();
        String getTexto();
        String getTipo();
        // Incluir lista de opções
        List<OpcaoResumo> getOpcoes();
    }

    interface OpcaoResumo {
        Long getId();
        String getTexto();
        Double getPeso();
    }
}
