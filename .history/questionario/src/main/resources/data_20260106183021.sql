-- ============================================================
-- QUESTIONÁRIO 1: PRAKRITI (Constituição Original)
-- ============================================================

INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(1, 'Teste de Prakriti (Constituição Original)', 'Avalia estrutura corporal, características físicas e mentais para identificar seu dosha predominante desde o nascimento.', true);

-- 1. Estrutura Física
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (1, 'Qual é a sua estrutura corporal natural?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (1, 'Magra, ossuda, dificuldade em ganhar peso', 1.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (2, 'Média, muscular, proporcional', 2.0, 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (3, 'Pesada, robusta, tendência a ganhar peso facilmente', 3.0, 1);

-- 2. Altura
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (2, 'Como é a sua altura?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (4, 'Muito alta ou muito baixa', 1.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (5, 'Média', 2.0, 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (6, 'Baixa a média, com boa estrutura', 3.0, 2);

-- 3. Articulações
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (3, 'Como são suas articulações?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (7, 'Pequenas, proeminentes, estalando facilmente', 1.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (8, 'Médias, flexíveis', 2.0, 3);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (9, 'Grandes, bem lubrificadas, estáveis', 3.0, 3);

-- 4. Pele
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (4, 'Como é a sua pele naturalmente?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (10, 'Seca, áspera, fria ao toque', 1.0, 4);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (11, 'Macia, oleosa, quente, com tendência a vermelhidão', 2.0, 4);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (12, 'Espessa, oleosa, suave, fria e pálida', 3.0, 4);

-- 5. Cabelo
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (5, 'Qual é a textura do seu cabelo?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (13, 'Seco, crespo, quebradiço', 1.0, 5);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (14, 'Fino, liso, com tendência à calvície ou branqueamento precoce', 2.0, 5);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (15, 'Grosso, oleoso, brilhante, forte', 3.0, 5);

-- 6. Unhas
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (6, 'Como são suas unhas?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (16, 'Secas, quebradiças, ásperas', 1.0, 6);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (17, 'Flexíveis, rosadas, brilhantes', 2.0, 6);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (18, 'Grossas, fortes, pálidas', 3.0, 6);

-- 7. Apetite
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (7, 'Como é o seu apetite?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (19, 'Variável, irregular, às vezes esquece de comer', 1.0, 7);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (20, 'Forte, intenso, fica irritado se pular refeições', 2.0, 7);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (21, 'Constante mas moderado, pode pular refeições facilmente', 3.0, 7);

-- 8. Digestão
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (8, 'Como é a sua digestão?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (22, 'Irregular, com gases e distensão abdominal', 1.0, 8);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (23, 'Forte, rápida, tendência a azia', 2.0, 8);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (24, 'Lenta, mas estável', 3.0, 8);

-- 9. Intestino
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (9, 'Como é o seu funcionamento intestinal?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (25, 'Irregular, tendência à constipação e fezes secas', 1.0, 9);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (26, 'Regular, fezes soltas, 2-3 vezes ao dia', 2.0, 9);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (27, 'Regular, pesado, uma vez ao dia', 3.0, 9);

-- 10. Bebidas
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (10, 'Qual é a sua preferência por bebidas?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (28, 'Prefere bebidas quentes', 1.0, 10);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (29, 'Prefere bebidas frias', 2.0, 10);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (30, 'Gosta de ambas, mas consome com moderação', 3.0, 10);

-- 11. Sono Padrão
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (11, 'Como é o seu padrão de sono?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (31, 'Leve, interrompido, dificuldade para dormir', 1.0, 11);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (32, 'Moderado, profundo, mas de curta duração', 2.0, 11);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (33, 'Profundo, pesado, longo', 3.0, 11);

-- 12. Horas de Sono
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (12, 'Quantas horas você precisa dormir para se sentir descansado?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (34, 'Variável, mas geralmente tem dificuldade em descansar bem', 1.0, 12);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (35, '6-8 horas, acorda revigorado', 2.0, 12);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (36, '8-10 horas ou mais', 3.0, 12);

-- 13. Energia
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (13, 'Como é o seu nível de energia ao longo do dia?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (37, 'Rajadas de energia seguidas de fadiga', 1.0, 13);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (38, 'Energia moderada e constante', 2.0, 13);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (39, 'Energia lenta para começar, mas sustentada', 3.0, 13);

-- 14. Reação ao Frio
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (14, 'Como você reage ao frio?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (40, 'Muito sensível, mãos e pés sempre frios', 1.0, 14);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (41, 'Tolera bem o frio', 2.0, 14);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (42, 'Tolera bem, mas prefere calor moderado', 3.0, 14);

-- 15. Reação ao Calor
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (15, 'Como você reage ao calor?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (43, 'Gosta de calor', 1.0, 15);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (44, 'Não tolera bem, transpira facilmente', 2.0, 15);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (45, 'Tolera razoavelmente', 3.0, 15);

-- 16. Transpiração
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (16, 'Como é a sua transpiração?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (46, 'Mínima', 1.0, 16);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (47, 'Profusa, com odor forte', 2.0, 16);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (48, 'Moderada, sem odor forte', 3.0, 16);

-- 17. Mente
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (17, 'Como é a sua mente?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (49, 'Rápida, criativa, inquieta', 1.0, 17);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (50, 'Aguçada, focada, crítica', 2.0, 17);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (51, 'Calma, estável, lenta para processar', 3.0, 17);

-- 18. Memória
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (18, 'Como é a sua memória?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (52, 'Aprende rápido, esquece rápido', 1.0, 18);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (53, 'Memória aguçada e precisa', 2.0, 18);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (54, 'Aprende devagar, mas lembra por muito tempo', 3.0, 18);

-- 19. Estresse
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (19, 'Como você lida com o estresse?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (55, 'Fica ansioso, preocupado', 1.0, 19);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (56, 'Fica irritado, frustrado', 2.0, 19);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (57, 'Fica retraído, deprimido', 3.0, 19);

-- 20. Emoção
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (20, 'Qual é a sua tendência emocional predominante?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (58, 'Ansiedade, medo, insegurança', 1.0, 20);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (59, 'Raiva, ciúme, competitividade', 2.0, 20);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (60, 'Apego, letargia, complacência', 3.0, 20);

-- 21. Fala
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (21, 'Como é a sua fala?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (61, 'Rápida, às vezes sem sentido, fala muito', 1.0, 21);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (62, 'Clara, precisa, persuasiva', 2.0, 21);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (63, 'Lenta, melodiosa, poucas palavras', 3.0, 21);

-- 22. Decisões
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (22, 'Como você toma decisões?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (64, 'Rapidamente, mas muda de ideia com frequência', 1.0, 22);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (65, 'Decisivamente, com confiança', 2.0, 22);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (66, 'Lentamente, após muita consideração', 3.0, 22);

-- 23. Atividade Física
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (23, 'Como é o seu nível de atividade física?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (67, 'Muito ativo, inquieto, não para', 1.0, 23);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (68, 'Moderadamente ativo, gosta de competição', 2.0, 23);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (69, 'Sedentário, prefere atividades calmas', 3.0, 23);

-- 24. Movimento
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (24, 'Como você se move?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (70, 'Rápido, irregular, agitado', 1.0, 24);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (71, 'Propositado, com objetivo claro', 2.0, 24);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (72, 'Lento, gracioso, relaxado', 3.0, 24);

-- 25. Dinheiro
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (25, 'Como você gasta dinheiro?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (73, 'Impulsivamente, rapidamente', 1.0, 25);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (74, 'Em coisas de qualidade e luxo', 2.0, 25);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (75, 'Com cuidado, economiza bem', 3.0, 25);

-- 26. Trabalho
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (26, 'Qual é o seu padrão de trabalho?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (76, 'Faz várias coisas ao mesmo tempo, disperso', 1.0, 26);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (77, 'Focado, eficiente, gosta de liderar', 2.0, 26);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (78, 'Lento e metódico, perseverante', 3.0, 26);

-- 27. Olhos
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (27, 'Como são seus olhos?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (79, 'Pequenos, ativos, secos', 1.0, 27);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (80, 'Penetrantes, médios, sensíveis à luz', 2.0, 27);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (81, 'Grandes, calmos, líquidos', 3.0, 27);

-- 28. Voz
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (28, 'Como é a sua voz?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (82, 'Fraca, rouca', 1.0, 28);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (83, 'Alta, aguda', 2.0, 28);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (84, 'Profunda, melodiosa', 3.0, 28);

-- 29. Imunidade/Doenças
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (29, 'Qual é a sua resistência a doenças?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (85, 'Baixa, sistema imunológico variável', 1.0, 29);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (86, 'Média, propensa a inflamações e febre', 2.0, 29);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (87, 'Alta, resistente, mas doenças duram mais quando ocorrem', 3.0, 29);

-- 30. Mudanças
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (30, 'Como você se relaciona com mudanças?', 'MULTIPLA_ESCOLHA', 1);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (88, 'Adora mudanças, busca novidades constantemente', 1.0, 30);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (89, 'Aceita mudanças se forem lógicas e benéficas', 2.0, 30);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (90, 'Resiste a mudanças, prefere rotina e estabilidade', 3.0, 30);


-- ============================================================
-- QUESTIONÁRIO 2: VIKRITI (Desequilíbrio Atual)
-- ============================================================

INSERT INTO questionario (id, titulo, descricao, ativo) VALUES 
(2, 'Teste de Vikriti (Desequilíbrio Atual)', 'Identifica desequilíbrios atuais (nos últimos 3-6 meses), focado em sintomas do climatério e gerais.', true);

-- 31. Fogachos (Q1 do Vikriti)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (31, 'Como estão seus fogachos/ondas de calor?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (91, 'Ocasionais, com sensação de frio após', 1.0, 31);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (92, 'Intensos, frequentes, com transpiração abundante', 2.0, 31);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (93, 'Leves ou ausentes', 3.0, 31);

-- 32. Sono Atual (Q2)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (32, 'Como está seu sono atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (94, 'Acordando frequentemente, dificuldade para voltar a dormir, insônia', 1.0, 32);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (95, 'Acordando com calor, sono agitado, sonhos intensos', 2.0, 32);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (96, 'Sono pesado, dificuldade para acordar, sonolência durante o dia', 3.0, 32);

-- 33. Menstruação/Climatério (Q3)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (33, 'Como está sua menstruação ou sintomas do climatério?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (97, 'Irregular, fluxo variável, cólicas com dor aguda', 1.0, 33);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (98, 'Fluxo abundante, sensação de calor, irritabilidade intensa', 2.0, 33);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (99, 'Retenção de líquidos, inchaço, peso', 3.0, 33);

-- 34. Estado Emocional (Q4)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (34, 'Como está seu estado emocional nos últimos meses?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (100, 'Ansiedade, medo, preocupação excessiva, nervosismo', 1.0, 34);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (101, 'Irritabilidade, raiva, frustração, impaciência', 2.0, 34);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (102, 'Tristeza, letargia, apatia, sensação de estagnação', 3.0, 34);

-- 35. Libido (Q5)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (35, 'Como está sua libido?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (103, 'Variável, com períodos de desinteresse e ansiedade', 1.0, 35);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (104, 'Diminuída, com irritação ou frustração', 2.0, 35);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (105, 'Muito baixa, com desinteresse persistente', 3.0, 35);

-- 36. Pele Atual (Q6)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (36, 'Como está sua pele atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (106, 'Muito seca, áspera, com fissuras ou descamação', 1.0, 36);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (107, 'Irritada, avermelhada, com manchas ou sensível', 2.0, 36);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (108, 'Oleosa, congestionada, poros dilatados', 3.0, 36);

-- 37. Cabelo Atual (Q7)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (37, 'Como está seu cabelo?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (109, 'Seco, quebradiço, com queda aumentada', 1.0, 37);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (110, 'Oleoso na raiz, com embranquecimento precoce', 2.0, 37);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (111, 'Oleoso, pesado, crescimento lento', 3.0, 37);

-- 38. Unhas Atual (Q8)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (38, 'Como estão suas unhas?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (112, 'Quebradiças, secas, descamando', 1.0, 38);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (113, 'Avermelhadas, quentes ao toque', 2.0, 38);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (114, 'Grossas, oleosas, crescimento lento', 3.0, 38);

-- 39. Apetite Atual (Q9)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (39, 'Como está seu apetite atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (115, 'Irregular, às vezes esquece de comer, ansiedade afeta o apetite', 1.0, 39);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (116, 'Forte, fica irritada se não come, fome intensa', 2.0, 39);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (117, 'Reduzido, pode ficar muito tempo sem comer', 3.0, 39);

-- 40. Digestão Atual (Q10)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (40, 'Como está sua digestão?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (118, 'Irregular, gases, inchaço, sensação de leveza excessiva', 1.0, 40);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (119, 'Azia, queimação, evacuações soltas ou urgentes', 2.0, 40);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (120, 'Lenta, pesada, sensação de plenitude prolongada', 3.0, 40);

-- 41. Intestino Atual (Q11)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (41, 'Como está seu funcionamento intestinal?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (121, 'Constipação, fezes secas e duras, irregularidade', 1.0, 41);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (122, 'Solto, 2-3 vezes ao dia, às vezes com queimação', 2.0, 41);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (123, 'Lento, pesado, com muco', 3.0, 41);

-- 42. Peso Atual (Q12)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (42, 'Como está seu peso?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (124, 'Perdeu peso ou dificuldade para ganhar', 1.0, 42);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (125, 'Mantém peso estável', 2.0, 42);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (126, 'Ganhou peso, especialmente no abdômen, dificuldade para perder', 3.0, 42);

-- 43. Energia Atual (Q13)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (43, 'Como está seu nível de energia?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (127, 'Esgotada, fadiga extrema, exaustão nervosa', 1.0, 43);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (128, 'Energia moderada, mas queima rápido quando em atividade', 2.0, 43);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (129, 'Letargia, preguiça, falta de motivação', 3.0, 43);

-- 44. Resistência Física (Q14)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (44, 'Como está sua resistência física?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (130, 'Muito baixa, cansa rapidamente', 1.0, 44);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (131, 'Moderada, mas recupera razoavelmente', 2.0, 44);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (132, 'Pesada, movimento lento, mas resiste quando em atividade', 3.0, 44);

-- 45. Ao Acordar (Q15)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (45, 'Como você acorda pela manhã?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (133, 'Acordada mas ansiosa, mente agitada', 1.0, 45);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (134, 'Relativamente bem, mas com calor', 2.0, 45);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (135, 'Com dificuldade, pesada, precisando de muito tempo', 3.0, 45);

-- 46. Memória Atual (Q16)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (46, 'Como está sua memória e concentração?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (136, 'Esquecimento frequente, dificuldade de foco, mente dispersa', 1.0, 46);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (137, 'Focada, mas crítica demais consigo mesma', 2.0, 46);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (138, 'Lenta para processar, nebulosa, falta de clareza', 3.0, 46);

-- 47. Reação ao Estresse Atual (Q17)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (47, 'Como você tem reagido ao estresse?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (139, 'Ansiedade intensa, pânico, preocupação excessiva', 1.0, 47);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (140, 'Irritação, explosões de raiva, frustração', 2.0, 47);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (141, 'Retraimento, isolamento, comer emocional', 3.0, 47);

-- 48. Fala Atual (Q18)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (48, 'Como está sua fala atualmente?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (142, 'Rápida, ansiosa, às vezes sem nexo', 1.0, 48);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (143, 'Assertiva, crítica, cortante', 2.0, 48);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (144, 'Lenta, com pausas longas, falta de palavras', 3.0, 48);

-- 49. Emoção Predominante (Q19)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (49, 'Qual emoção predomina em você agora?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (145, 'Medo, insegurança, ansiedade', 1.0, 49);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (146, 'Raiva, frustração, ressentimento', 2.0, 49);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (147, 'Tristeza, apego, depressão', 3.0, 49);

-- 50. Sensação Térmica (Q20)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (50, 'Como você tem sentido em relação à temperatura?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (148, 'Mãos e pés frios, calafrios, mas com fogachos ocasionais', 1.0, 50);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (149, 'Muito calor, fogachos intensos, transpiração abundante', 2.0, 50);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (150, 'Sensação de frio e umidade, mas tolerável', 3.0, 50);

-- 51. Transpiração Atual (Q21)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (51, 'Como está sua transpiração?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (151, 'Mínima, mesmo com fogachos', 1.0, 51);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (152, 'Excessiva, com odor forte, principalmente noturna', 2.0, 51);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (153, 'Moderada, pegajosa', 3.0, 51);

-- 52. Dores (Q22)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (52, 'Você tem sentido dores articulares ou musculares?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (154, 'Dores agudas, migratórias, com rigidez e estalos', 1.0, 52);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (155, 'Dores com sensação de queimação ou inflamação', 2.0, 52);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (156, 'Dores surdas, rigidez pela manhã, pesadez', 3.0, 52);

-- 53. Região Pélvica (Q23)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (53, 'Como está sua região pélvica/vaginal?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (157, 'Secura vaginal intensa, desconforto, dor', 1.0, 53);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (158, 'Sensação de calor, irritação, inflamação', 2.0, 53);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (159, 'Corrimento, umidade excessiva, peso', 3.0, 53);

-- 54. Dores de Cabeça (Q24)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (54, 'Você tem tido dores de cabeça?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (160, 'Tensionais, na região da nuca, variáveis', 1.0, 54);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (161, 'Enxaquecas intensas, com sensibilidade à luz', 2.0, 54);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (162, 'Peso na cabeça, sinus congestionado', 3.0, 54);

-- 55. Rotina Alimentar (Q25)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (55, 'Como tem sido sua rotina alimentar?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (163, 'Irregular, pula refeições, come rápido e em pé', 1.0, 55);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (164, 'Regular, não tolera atrasos nas refeições', 2.0, 55);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (165, 'Come por conforto emocional, belisca muito', 3.0, 55);

-- 56. Exercícios (Q26)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (56, 'Como está sua prática de exercícios?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (166, 'Muito agitada ou completamente parada, sem regularidade', 1.0, 56);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (167, 'Intensa quando faz, competitiva', 2.0, 56);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (168, 'Sedentária, evita movimento, resistência ao exercício', 3.0, 56);

-- 57. Decisões Atual (Q27)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (57, 'Como você tem tomado decisões?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (169, 'Com muita indecisão, mudando de ideia constantemente', 1.0, 57);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (170, 'Rapidamente, mas com irritação se contrariada', 2.0, 57);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (171, 'Procrastinando, evitando mudanças', 3.0, 57);

-- 58. Edemas (Q28)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (58, 'Você tem apresentado edemas (inchaço)?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (172, 'Ocasional, principalmente nos tornozelos', 1.0, 58);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (173, 'Raramente', 2.0, 58);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (174, 'Frequente, generalizado, principalmente pernas e abdômen', 3.0, 58);

-- 59. Imunidade Atual (Q29)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (59, 'Como está sua imunidade?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (175, 'Baixa, pega resfriados facilmente, recuperação lenta', 1.0, 59);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (176, 'Tendência a inflamações, infecções com febre', 2.0, 59);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (177, 'Congestão frequente, alergias, muco', 3.0, 59);

-- 60. Sintoma Incômodo (Q30)
INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES (60, 'Qual sintoma tem mais incomodado você nesta fase?', 'MULTIPLA_ESCOLHA', 2);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (178, 'Ansiedade, insônia, secura (pele, vaginal)', 1.0, 60);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (179, 'Fogachos intensos, irritabilidade, inflamações', 2.0, 60);
INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES (180, 'Ganho de peso, letargia, depressão', 3.0, 60);

-- Ajustando sequência para evitar conflito em inserções futuras
ALTER TABLE questionario ALTER COLUMN id RESTART WITH 3;
ALTER TABLE pergunta ALTER COLUMN id RESTART WITH 61;
ALTER TABLE opcao ALTER COLUMN id RESTART WITH 181;