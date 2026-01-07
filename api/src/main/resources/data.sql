-- Gerado automaticamente (Manual Override)
-- Configuração de Encoding: UTF-8

-- Questionário 1: Prakriti
INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(1, 'Teste de Prakriti (Constituição Original)', 'Objetivo: Identificar a sua natureza biológica fundamental (o dosha predominante desde o nascimento).', true);

-- I. Estrutura Física
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (1, 'Qual é a sua estrutura corporal natural?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (1, 'Magra, ossuda, dificuldade em ganhar peso (Vata)', 1.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (2, 'Média, muscular, proporcional (Pitta)', 2.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (3, 'Pesada, robusta, tendência a ganhar peso facilmente (Kapha)', 3.0, 1);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (2, 'Como é a sua altura?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (4, 'Muito alta ou muito baixa (Vata)', 1.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (5, 'Média (Pitta)', 2.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (6, 'Baixa a média, com boa estrutura (Kapha)', 3.0, 2);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (3, 'Como são suas articulações?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (7, 'Pequenas, proeminentes, estalando facilmente (Vata)', 1.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (8, 'Médias, flexíveis (Pitta)', 2.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (9, 'Grandes, bem lubrificadas, estáveis (Kapha)', 3.0, 3);

-- II. Pele e Cabelo
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (4, 'Como é a sua pele naturalmente?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (10, 'Seca, áspera, fria ao toque (Vata)', 1.0, 4);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (11, 'Macia, oleosa, quente, com tendência a vermelhidão (Pitta)', 2.0, 4);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (12, 'Espessa, oleosa, suave, fria e pálida (Kapha)', 3.0, 4);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (5, 'Qual é a textura do seu cabelo?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (13, 'Seco, crespo, quebradiço (Vata)', 1.0, 5);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (14, 'Fino, liso, com tendência à calvície ou branqueamento precoce (Pitta)', 2.0, 5);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (15, 'Grosso, oleoso, brilhante, forte (Kapha)', 3.0, 5);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (6, 'Como são suas unhas?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (16, 'Secas, quebradiças, ásperas (Vata)', 1.0, 6);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (17, 'Flexíveis, rosadas, brilhantes (Pitta)', 2.0, 6);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (18, 'Grossas, fortes, pálidas (Kapha)', 3.0, 6);

-- III. Digestão e Apetite
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (7, 'Como é o seu apetite?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (19, 'Variável, irregular, às vezes esquece de comer (Vata)', 1.0, 7);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (20, 'Forte, intenso, fica irritado se pular refeições (Pitta)', 2.0, 7);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (21, 'Constante mas moderado, pode pular refeições facilmente (Kapha)', 3.0, 7);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (8, 'Como é a sua digestão?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (22, 'Irregular, com gases e distensão abdominal (Vata)', 1.0, 8);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (23, 'Forte, rápida, tendência a azia (Pitta)', 2.0, 8);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (24, 'Lenta, mas estável (Kapha)', 3.0, 8);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (9, 'Como é o seu funcionamento intestinal?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (25, 'Irregular, tendência à constipação e fezes secas (Vata)', 1.0, 9);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (26, 'Regular, fezes soltas, 2-3 vezes ao dia (Pitta)', 2.0, 9);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (27, 'Regular, pesado, uma vez ao dia (Kapha)', 3.0, 9);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (10, 'Qual é a sua preferência por bebidas?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (28, 'Prefere bebidas quentes (Vata)', 1.0, 10);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (29, 'Prefere bebidas frias (Pitta)', 2.0, 10);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (30, 'Gosta de ambas, mas consome com moderação (Kapha)', 3.0, 10);

-- IV. Sono e Energia
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (11, 'Como é o seu padrão de sono?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (31, 'Leve, interrompido, dificuldade para dormir (Vata)', 1.0, 11);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (32, 'Moderado, profundo, mas de curta duração (Pitta)', 2.0, 11);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (33, 'Profundo, pesado, longo (Kapha)', 3.0, 11);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (12, 'Quantas horas você precisa dormir para se sentir descansado?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (34, 'Variável, mas geralmente tem dificuldade em descansar bem (Vata)', 1.0, 12);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (35, '6-8 horas, acorda revigorado (Pitta)', 2.0, 12);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (36, '8-10 horas ou mais (Kapha)', 3.0, 12);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (13, 'Como é o seu nível de energia ao longo do dia?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (37, 'Rajadas de energia seguidas de fadiga (Vata)', 1.0, 13);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (38, 'Energia moderada e constante (Pitta)', 2.0, 13);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (39, 'Energia lenta para começar, mas sustentada (Kapha)', 3.0, 13);

-- V. Temperatura e Clima
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (14, 'Como você reage ao frio?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (40, 'Muito sensível, mãos e pés sempre frios (Vata)', 1.0, 14);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (41, 'Tolera bem o frio (Pitta)', 2.0, 14);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (42, 'Tolera bem, mas prefere calor moderado (Kapha)', 3.0, 14);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (15, 'Como você reage ao calor?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (43, 'Gosta de calor (Vata)', 1.0, 15);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (44, 'Não tolera bem, transpira facilmente (Pitta)', 2.0, 15);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (45, 'Tolera razoavelmente (Kapha)', 3.0, 15);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (16, 'Como é a sua transpiração?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (46, 'Mínima (Vata)', 1.0, 16);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (47, 'Profusa, com odor forte (Pitta)', 2.0, 16);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (48, 'Moderada, sem odor forte (Kapha)', 3.0, 16);

-- VI. Características Mentais e Emocionais
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (17, 'Como é a sua mente?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (49, 'Rápida, criativa, inquieta (Vata)', 1.0, 17);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (50, 'Aguçada, focada, crítica (Pitta)', 2.0, 17);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (51, 'Calma, estável, lenta para processar (Kapha)', 3.0, 17);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (18, 'Como é a sua memória?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (52, 'Aprende rápido, esquece rápido (Vata)', 1.0, 18);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (53, 'Memória aguçada e precisa (Pitta)', 2.0, 18);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (54, 'Aprende devagar, mas lembra por muito tempo (Kapha)', 3.0, 18);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (19, 'Como você lida com o estresse?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (55, 'Fica ansioso, preocupado (Vata)', 1.0, 19);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (56, 'Fica irritado, frustrado (Pitta)', 2.0, 19);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (57, 'Fica retraído, deprimido (Kapha)', 3.0, 19);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (20, 'Qual é a sua tendência emocional predominante?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (58, 'Ansiedade, medo, insegurança (Vata)', 1.0, 20);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (59, 'Raiva, ciúme, competitividade (Pitta)', 2.0, 20);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (60, 'Apego, letargia, complacência (Kapha)', 3.0, 20);

-- VII. Fala e Comunicação
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (21, 'Como é a sua fala?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (61, 'Rápida, às vezes sem sentido, fala muito (Vata)', 1.0, 21);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (62, 'Clara, precisa, persuasiva (Pitta)', 2.0, 21);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (63, 'Lenta, melodiosa, poucas palavras (Kapha)', 3.0, 21);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (22, 'Como você toma decisões?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (64, 'Rapidamente, mas muda de ideia com frequência (Vata)', 1.0, 22);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (65, 'Decisivamente, com confiança (Pitta)', 2.0, 22);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (66, 'Lentamente, após muita consideração (Kapha)', 3.0, 22);

-- VIII. Atividade e Movimento
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (23, 'Como é o seu nível de atividade física?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (67, 'Muito ativo, inquieto, não para (Vata)', 1.0, 23);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (68, 'Moderadamente ativo, gosta de competição (Pitta)', 2.0, 23);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (69, 'Sedentário, prefere atividades calmas (Kapha)', 3.0, 23);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (24, 'Como você se move?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (70, 'Rápido, irregular, agitado (Vata)', 1.0, 24);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (71, 'Propositado, com objetivo claro (Pitta)', 2.0, 24);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (72, 'Lento, gracioso, relaxado (Kapha)', 3.0, 24);

-- IX. Características Adicionais
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (25, 'Como você gasta dinheiro?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (73, 'Impulsivamente, rapidamente (Vata)', 1.0, 25);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (74, 'Em coisas de qualidade e luxo (Pitta)', 2.0, 25);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (75, 'Com cuidado, economiza bem (Kapha)', 3.0, 25);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (26, 'Qual é o seu padrão de trabalho?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (76, 'Faz várias coisas ao mesmo tempo, disperso (Vata)', 1.0, 26);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (77, 'Focado, eficiente, gosta de liderar (Pitta)', 2.0, 26);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (78, 'Lento e metódico, perseverante (Kapha)', 3.0, 26);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (27, 'Como são seus olhos?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (79, 'Pequenos, ativos, secos (Vata)', 1.0, 27);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (80, 'Penetrantes, médios, sensíveis à luz (Pitta)', 2.0, 27);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (81, 'Grandes, calmos, líquidos (Kapha)', 3.0, 27);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (28, 'Como é a sua voz?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (82, 'Fraca, rouca (Vata)', 1.0, 28);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (83, 'Alta, aguda (Pitta)', 2.0, 28);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (84, 'Profunda, melodiosa (Kapha)', 3.0, 28);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (29, 'Qual é a sua resistência a doenças?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (85, 'Baixa, sistema imunológico variável (Vata)', 1.0, 29);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (86, 'Média, propensa a inflamações e febre (Pitta)', 2.0, 29);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (87, 'Alta, resistente, mas doenças duram mais quando ocorrem (Kapha)', 3.0, 29);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (30, 'Como você se relaciona com mudanças?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (88, 'Adora mudanças, busca novidades constantemente (Vata)', 1.0, 30);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (89, 'Aceita mudanças se forem lógicas e benéficas (Pitta)', 2.0, 30);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (90, 'Resiste a mudanças, prefere rotina e estabilidade (Kapha)', 3.0, 30);


-- Questionário 2: Vikriti
INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(2, 'Teste de Vikriti (Desequilíbrio Atual)', 'Objetivo: Avaliar sintomas e condições atuais para identificar qual dosha está em desequilíbrio agora.', true);

-- I. Sintomas Relacionados ao Climatério
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (31, 'Como estão seus fogachos/ondas de calor?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (91, 'Ocasionais, com sensação de frio após (Vata)', 1.0, 31);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (92, 'Intensos, frequentes, com transpiração abundante (Pitta)', 2.0, 31);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (93, 'Leves ou ausentes (Kapha)', 3.0, 31);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (32, 'Como está seu sono atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (94, 'Acordando frequentemente, dificuldade para voltar a dormir, insônia (Vata)', 1.0, 32);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (95, 'Acordando com calor, sono agitado, sonhos intensos (Pitta)', 2.0, 32);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (96, 'Sono pesado, dificuldade para acordar, sonolência durante o dia (Kapha)', 3.0, 32);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (33, 'Como está sua menstruação (se ainda menstrua) ou sintomas do climatério?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (97, 'Irregular, fluxo variável, cólicas com dor aguda (Vata)', 1.0, 33);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (98, 'Fluxo abundante, sensação de calor, irritabilidade intensa (Pitta)', 2.0, 33);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (99, 'Retenção de líquidos, inchaço, peso (Kapha)', 3.0, 33);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (34, 'Como está seu estado emocional nos últimos meses?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (100, 'Ansiedade, medo, preocupação excessiva, nervosismo (Vata)', 1.0, 34);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (101, 'Irritabilidade, raiva, frustração, impaciência (Pitta)', 2.0, 34);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (102, 'Tristeza, letargia, apatia, sensação de estagnação (Kapha)', 3.0, 34);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (35, 'Como está sua libido?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (103, 'Variável, com períodos de desinteresse e ansiedade (Vata)', 1.0, 35);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (104, 'Diminuída, com irritação ou frustração (Pitta)', 2.0, 35);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (105, 'Muito baixa, com desinteresse persistente (Kapha)', 3.0, 35);

-- II. Pele, Cabelo e Unhas
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (36, 'Como está sua pele atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (106, 'Muito seca, áspera, com fissuras ou descamação (Vata)', 1.0, 36);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (107, 'Irritada, avermelhada, com manchas ou sensível (Pitta)', 2.0, 36);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (108, 'Oleosa, congestionada, poros dilatados (Kapha)', 3.0, 36);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (37, 'Como está seu cabelo?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (109, 'Seco, quebradiço, com queda aumentada (Vata)', 1.0, 37);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (110, 'Oleoso na raiz, com embranquecimento precoce (Pitta)', 2.0, 37);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (111, 'Oleoso, pesado, crescimento lento (Kapha)', 3.0, 37);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (38, 'Como estão suas unhas?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (112, 'Quebradiças, secas, descamando (Vata)', 1.0, 38);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (113, 'Avermelhadas, quentes ao toque (Pitta)', 2.0, 38);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (114, 'Grossas, oleosas, crescimento lento (Kapha)', 3.0, 38);

-- III. Digestão e Apetite Atual
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (39, 'Como está seu apetite atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (115, 'Irregular, às vezes esquece de comer, ansiedade afeta o apetite (Vata)', 1.0, 39);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (116, 'Forte, fica irritada se não come, fome intensa (Pitta)', 2.0, 39);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (117, 'Reduzido, pode ficar muito tempo sem comer (Kapha)', 3.0, 39);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (40, 'Como está sua digestão?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (118, 'Irregular, gases, inchaço, sensação de leveza excessiva (Vata)', 1.0, 40);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (119, 'Azia, queimação, evacuações soltas ou urgentes (Pitta)', 2.0, 40);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (120, 'Lenta, pesada, sensação de plenitude prolongada (Kapha)', 3.0, 40);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (41, 'Como está seu funcionamento intestinal?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (121, 'Constipação, fezes secas e duras, irregularidade (Vata)', 1.0, 41);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (122, 'Solto, 2-3 vezes ao dia, às vezes com queimação (Pitta)', 2.0, 41);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (123, 'Lento, pesado, com muco (Kapha)', 3.0, 41);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (42, 'Como está seu peso?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (124, 'Perdeu peso ou dificuldade para ganhar (Vata)', 1.0, 42);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (125, 'Mantém peso estável (Pitta)', 2.0, 42);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (126, 'Ganhou peso, especialmente no abdômen, dificuldade para perder (Kapha)', 3.0, 42);

-- IV. Energia e Vitalidade
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (43, 'Como está seu nível de energia?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (127, 'Esgotada, fadiga extrema, exaustão nervosa (Vata)', 1.0, 43);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (128, 'Energia moderada, mas queima rápido quando em atividade (Pitta)', 2.0, 43);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (129, 'Letargia, preguiça, falta de motivação (Kapha)', 3.0, 43);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (44, 'Como está sua resistência física?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (130, 'Muito baixa, cansa rapidamente (Vata)', 1.0, 44);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (131, 'Moderada, mas recupera razoavelmente (Pitta)', 2.0, 44);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (132, 'Pesada, movimento lento, mas resiste quando em atividade (Kapha)', 3.0, 44);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (45, 'Como você acorda pela manhã?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (133, 'Acordada mas ansiosa, mente agitada (Vata)', 1.0, 45);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (134, 'Relativamente bem, mas com calor (Pitta)', 2.0, 45);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (135, 'Com dificuldade, pesada, precisando de muito tempo (Kapha)', 3.0, 45);

-- V. Mente e Emoções
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (46, 'Como está sua memória e concentração?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (136, 'Esquecimento frequente, dificuldade de foco, mente dispersa (Vata)', 1.0, 46);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (137, 'Focada, mas crítica demais consigo mesma (Pitta)', 2.0, 46);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (138, 'Lenta para processar, nebulosa, falta de clareza (Kapha)', 3.0, 46);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (47, 'Como você tem reagido ao estresse?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (139, 'Ansiedade intensa, pânico, preocupação excessiva (Vata)', 1.0, 47);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (140, 'Irritação, explosões de raiva, frustração (Pitta)', 2.0, 47);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (141, 'Retraimento, isolamento, comer emocional (Kapha)', 3.0, 47);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (48, 'Como está sua fala atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (142, 'Rápida, ansiosa, às vezes sem nexo (Vata)', 1.0, 48);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (143, 'Assertiva, crítica, cortante (Pitta)', 2.0, 48);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (144, 'Lenta, com pausas longas, falta de palavras (Kapha)', 3.0, 48);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (49, 'Qual emoção predomina em você agora?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (145, 'Medo, insegurança, ansiedade (Vata)', 1.0, 49);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (146, 'Raiva, frustração, ressentimento (Pitta)', 2.0, 49);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (147, 'Tristeza, apego, depressão (Kapha)', 3.0, 49);

-- VI. Temperatura e Sensações
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (50, 'Como você tem sentido em relação à temperatura?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (148, 'Mãos e pés frios, calafrios, mas com fogachos ocasionais (Vata)', 1.0, 50);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (149, 'Muito calor, fogachos intensos, transpiração abundante (Pitta)', 2.0, 50);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (150, 'Sensação de frio e umidade, mas tolerável (Kapha)', 3.0, 50);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (51, 'Como está sua transpiração?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (151, 'Mínima, mesmo com fogachos (Vata)', 1.0, 51);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (152, 'Excessiva, com odor forte, principalmente noturna (Pitta)', 2.0, 51);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (153, 'Moderada, pegajosa (Kapha)', 3.0, 51);

-- VII. Dores e Desconfortos
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (52, 'Você tem sentido dores articulares ou musculares?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (154, 'Dores agudas, migratórias, com rigidez e estalos (Vata)', 1.0, 52);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (155, 'Dores com sensação de queimação ou inflamação (Pitta)', 2.0, 52);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (156, 'Dores surdas, rigidez pela manhã, pesadez (Kapha)', 3.0, 52);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (53, 'Como está sua região pélvica/vaginal?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (157, 'Secura vaginal intensa, desconforto, dor (Vata)', 1.0, 53);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (158, 'Sensação de calor, irritação, inflamação (Pitta)', 2.0, 53);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (159, 'Corrimento, umidade excessiva, peso (Kapha)', 3.0, 53);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (54, 'Você tem tido dores de cabeça?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (160, 'Tensionais, na região da nuca, variáveis (Vata)', 1.0, 54);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (161, 'Enxaquecas intensas, com sensibilidade à luz (Pitta)', 2.0, 54);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (162, 'Peso na cabeça, sinus congestionado (Kapha)', 3.0, 54);

-- VIII. Comportamento e Rotina
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (55, 'Como tem sido sua rotina alimentar?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (163, 'Irregular, pula refeições, come rápido e em pé (Vata)', 1.0, 55);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (164, 'Regular, não tolera atrasos nas refeições (Pitta)', 2.0, 55);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (165, 'Come por conforto emocional, belisca muito (Kapha)', 3.0, 55);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (56, 'Como está sua prática de exercícios?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (166, 'Muito agitada ou completamente parada, sem regularidade (Vata)', 1.0, 56);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (167, 'Intensa quando faz, competitiva (Pitta)', 2.0, 56);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (168, 'Sedentária, evita movimento, resistência ao exercício (Kapha)', 3.0, 56);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (57, 'Como você tem tomado decisões?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (169, 'Com muita indecisão, mudando de ideia constantemente (Vata)', 1.0, 57);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (170, 'Rapidamente, mas com irritação se contrariada (Pitta)', 2.0, 57);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (171, 'Procrastinando, evitando mudanças (Kapha)', 3.0, 57);

-- IX. Sintomas Específicos
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (58, 'Você tem apresentado edemas (inchaço)?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (172, 'Ocasional, principalmente nos tornozelos (Vata)', 1.0, 58);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (173, 'Raramente (Pitta)', 2.0, 58);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (174, 'Frequente, generalizado, principalmente pernas e abdômen (Kapha)', 3.0, 58);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (59, 'Como está sua imunidade?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (175, 'Baixa, pega resfriados facilmente, recuperação lenta (Vata)', 1.0, 59);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (176, 'Tendência a inflamações, infecções com febre (Pitta)', 2.0, 59);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (177, 'Congestão frequente, alergias, muco (Kapha)', 3.0, 59);

INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (60, 'Qual sintoma tem mais incomodado você nesta fase?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (178, 'Ansiedade, insônia, secura (pele, vaginal) (Vata)', 1.0, 60);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (179, 'Fogachos intensos, irritabilidade, inflamações (Pitta)', 2.0, 60);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (180, 'Ganho de peso, letargia, depressão (Kapha)', 3.0, 60);

-- Reset Sequences 
ALTER TABLE questionario AUTO_INCREMENT = 3;
ALTER TABLE pergunta AUTO_INCREMENT = 61;
ALTER TABLE opcao AUTO_INCREMENT = 181;
