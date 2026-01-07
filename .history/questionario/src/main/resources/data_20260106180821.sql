-- Questionário 1: Prakriti
INSERT INTO questionario (titulo, descricao, ativo) VALUES 
('Teste de Prakriti (Constituição Original)', 'Avalia estrutura corporal, características físicas e mentais para identificar seu dosha predominante desde o nascimento.', true);

-- Perguntas Prakriti (Exemplo de algumas para começar, são muitas)
SET @q1_id = (SELECT id FROM questionario WHERE titulo = 'Teste de Prakriti (Constituição Original)');

-- 1. Estrutura Física
INSERT INTO pergunta (texto, tipo, questionario_id) VALUES ('Qual é a sua estrutura corporal natural?', 'MULTIPLA_ESCOLHA', @q1_id);
SET @p_id = LAST_INSERT_ID();
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Magra, ossuda, dificuldade em ganhar peso (Vata)', 1.0, @p_id); -- Peso pode ser usado como identificador 1=V, 2=P, 3=K se quisermos, ou string. Aqui usarei score numérico simples 1, 2, 3 provisoriamente para mapear
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Média, muscular, proporcional (Pitta)', 2.0, @p_id);
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Pesada, robusta, tendência a ganhar peso facilmente (Kapha)', 3.0, @p_id);

-- 2. Altura
INSERT INTO pergunta (texto, tipo, questionario_id) VALUES ('Como é a sua altura?', 'MULTIPLA_ESCOLHA', @q1_id);
SET @p_id = LAST_INSERT_ID();
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Muito alta ou muito baixa', 1.0, @p_id);
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Média', 2.0, @p_id);
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Baixa a média, com boa estrutura', 3.0, @p_id);

-- Questionário 2: Vikriti
INSERT INTO questionario (titulo, descricao, ativo) VALUES 
('Teste de Vikriti (Desequilíbrio Atual)', 'Ajuda a identificar qual dosha está em desequilíbrio no momento, analisando sintomas atuais.', true);

SET @q2_id = (SELECT id FROM questionario WHERE titulo = 'Teste de Vikriti (Desequilíbrio Atual)');

-- Exemplo pergunta Vikriti
INSERT INTO pergunta (texto, tipo, questionario_id) VALUES ('Como estão seus fogachos/ondas de calor?', 'MULTIPLA_ESCOLHA', @q2_id);
SET @p_id = LAST_INSERT_ID();
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Ocasionais, com sensação de frio após', 1.0, @p_id);
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Intensos, frequentes, com transpiração abundante', 2.0, @p_id);
INSERT INTO opcao (texto, peso, pergunta_id) VALUES ('Leves ou ausentes', 3.0, @p_id);
