package com.mmiranda.questionario.config;

import com.mmiranda.questionario.entity.Convite;
import com.mmiranda.questionario.entity.Opcao;
import com.mmiranda.questionario.entity.Participante;
import com.mmiranda.questionario.entity.Pergunta;
import com.mmiranda.questionario.entity.Questionario;
import com.mmiranda.questionario.entity.Resposta;
import com.mmiranda.questionario.entity.Tentativa;
import com.mmiranda.questionario.entity.Usuario;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Configuration
public class RestConfiguration implements RepositoryRestConfigurer {

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        // Expor IDs para todas as entidades
        config.exposeIdsFor(
            Questionario.class, 
            Pergunta.class, 
            Opcao.class, 
            Convite.class, 
            Tentativa.class, 
            Resposta.class, 
            Participante.class,
            Usuario.class
        );
        
        // Configurar CORS globalmente para o Data REST também
        cors.addMapping("/**")
            .allowedOrigins("*")
            .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS");
    }
}
