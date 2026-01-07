-- Questionário 1: Prakriti
INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(1, 'Teste de Prakriti (Constituição Original)', 'Avalia estrutura corporal, características físicas e mentais para identificar seu dosha predominante desde o nascimento.', true);

-- Perguntas Prakriti
-- 1. Estrutura Física
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (1, 'Qual é a sua estrutura corporal natural?', 'MULTIPLA_ESCOLHA', 1);

INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (1, 'Magra, ossuda, dificuldade em ganhar peso (Vata)', 1.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (2, 'Média, muscular, proporcional (Pitta)', 2.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (3, 'Pesada, robusta, tendência a ganhar peso facilmente (Kapha)', 3.0, 1);

-- 2. Altura
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (2, 'Como é a sua altura?', 'MULTIPLA_ESCOLHA', 1);

INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (4, 'Muito alta ou muito baixa', 1.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (5, 'Média', 2.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (6, 'Baixa a média, com boa estrutura', 3.0, 2);

-- Questionário 2: Vikriti
INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(2, 'Teste de Vikriti (Desequilíbrio Atual)', 'Ajuda a identificar qual dosha está em desequilíbrio no momento, analisando sintomas atuais.', true);

-- Exemplo pergunta Vikriti
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (3, 'Como estão seus fogachos/ondas de calor?', 'MULTIPLA_ESCOLHA', 2);

INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (7, 'Ocasionais, com sensação de frio após', 1.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (8, 'Intensos, frequentes, com transpiração abundante', 2.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (9, 'Leves ou ausentes', 3.0, 3);

-- Ajustando sequência para não dar erro ao inserir novos dados manualmente depois
ALTER TABLE questionario ALTER COLUMN id RESTART WITH 3;
ALTER TABLE pergunta ALTER COLUMN id RESTART WITH 4;
ALTER TABLE opcao ALTER COLUMN id RESTART WITH 10;
