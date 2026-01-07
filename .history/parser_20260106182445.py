import re

def parse_questions(filename):
    with open(filename, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    sql_lines = []
    
    # Headers
    sql_lines.append("-- Gerado automaticamente pelo script parser.py")

    current_questionnaire_id = 1 # 1 = Prakriti
    question_id = 1
    option_id = 1

    # Insert Questionnaire 1
    sql_lines.append("INSERT INTO questionario (id, titulo, descricao, ativo) VALUES (1, 'Teste de Prakriti (Constituição Original)', 'Avalia estrutura corporal e características desde o nascimento.', true);")
    
    # Insert Questionnaire 2
    sql_lines.append("INSERT INTO questionario (id, titulo, descricao, ativo) VALUES (2, 'Teste de Vikriti (Desequilíbrio Atual)', 'Avalia sintomas atuais, climatério e desequilíbrios momentâneos.', true);")

    mode = "PRAKRITI" # Start mode

    for line in lines:
        line = line.strip()
        if not line:
            continue
            
        if "=== VIKRITI ===" in line:
            mode = "VIKRITI"
            current_questionnaire_id = 2
            continue
        if "=== PRAKRITI ===" in line:
            mode = "PRAKRITI"
            current_questionnaire_id = 1
            continue

        # Detect Question (starts with number dot)
        # e.g. "1. Qual é..."
        match_q = re.match(r'^(\d+)\.\s+(.*)', line)
        if match_q:
            q_text = match_q.group(2).replace("'", "''") # Escape single quotes
            sql_lines.append(f"INSERT INTO pergunta (id, texto, tipo, questionario_id) VALUES ({question_id}, '{q_text}', 'MULTIPLA_ESCOLHA', {current_questionnaire_id});")
            question_id += 1
            continue
            
        # Detect Option (starts with (V), (P), (K))
        # e.g. "(V) Magra..."
        match_opt = re.match(r'^\(([VPK])\)\s+(.*)', line)
        if match_opt:
            dosha = match_opt.group(1)
            opt_text = line.replace("'", "''") # Escape quotes, keep the (V) prefix in text? Or just text. User text has (V) in content. I will keep full text or stripped? 
            # User example: "(V) Magra..." -> Text: form "Magra..." 
            # But earlier I used text with (V). Let's keep the full line as text to be safe and informative.
            
            # Map Dosha to Weight: V=1, P=2, K=3
            weight = 0.0
            if dosha == 'V': weight = 1.0
            if dosha == 'P': weight = 2.0
            if dosha == 'K': weight = 3.0
            
            sql_lines.append(f"INSERT INTO opcao (id, texto, peso, pergunta_id) VALUES ({option_id}, '{opt_text}', {weight}, {question_id - 1});")
            option_id += 1
            continue

    # Reset sequences
    sql_lines.append(f"ALTER TABLE questionario ALTER COLUMN id RESTART WITH 3;")
    sql_lines.append(f"ALTER TABLE pergunta ALTER COLUMN id RESTART WITH {question_id};")
    sql_lines.append(f"ALTER TABLE opcao ALTER COLUMN id RESTART WITH {option_id};")

    return sql_lines

def write_sql(sql_lines, output_file):
    with open(output_file, 'w', encoding='utf-8') as f:
        for line in sql_lines:
            f.write(line + '\n')

if __name__ == "__main__":
    sql = parse_questions('questoes.txt')
    write_sql(sql, 'questionario/src/main/resources/data.sql')
    print("Sucesso! data.sql gerado.")
