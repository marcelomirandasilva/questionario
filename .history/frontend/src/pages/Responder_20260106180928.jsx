import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import api from '../services/api';

function Responder() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [questionario, setQuestionario] = useState(null);
  const [respostas, setRespostas] = useState({}); // Mapa de perguntaId -> opcaoPeso (ou opcaoId)

  useEffect(() => {
    api.get(`/questionarios/${id}`)
      .then(response => setQuestionario(response.data))
      .catch(error => console.error("Erro ao carregar questionário", error));
  }, [id]);

  const handleSelectOption = (perguntaId, opcao) => {
    setRespostas(prev => ({
      ...prev,
      [perguntaId]: opcao // Salvando o objeto opção inteiro ou peso para cálculo
    }));
  };

  const calcularResultado = () => {
    // Lógica simples de contagem para V, P, K
    // Como definimos peso 1, 2, 3 no banco: 1=V, 2=P, 3=K (exemplo)
    let vata = 0;
    let pitta = 0;
    let kapha = 0;

    Object.values(respostas).forEach(op => {
      if (op.peso === 1) vata++;
      if (op.peso === 2) pitta++;
      if (op.peso === 3) kapha++;
    });

    alert(`Resultado Preliminar:\nVata: ${vata}\nPitta: ${pitta}\nKapha: ${kapha}`);
    // Futuro: Salvar no backend via POST
  };

  if (!questionario) return <div className="container"><p>Carregando...</p></div>;

  return (
    <div className="container">
      <header className="hero" style={{marginBottom: '2rem'}}>
        <h1>{questionario.titulo}</h1>
        <p>{questionario.descricao}</p>
      </header>

      <div style={{width: '100%', maxWidth: '800px', textAlign: 'left'}}>
        {questionario.perguntas && questionario.perguntas.map((pergunta, index) => (
          <div key={pergunta.id} className="card" style={{marginBottom: '1.5rem'}}>
            <h3>{index + 1}. {pergunta.texto}</h3>
            <div className="opcoes-list">
              {pergunta.opcoes.map(opcao => (
                <label key={opcao.id} style={{display: 'block', padding: '0.5rem', cursor: 'pointer'}}>
                  <input 
                    type="radio" 
                    name={`pergunta-${pergunta.id}`}
                    onChange={() => handleSelectOption(pergunta.id, opcao)}
                    style={{marginRight: '10px'}}
                  />
                  {opcao.texto}
                </label>
              ))}
            </div>
          </div>
        ))}
        
        <button className="btn-primary" onClick={calcularResultado} style={{marginTop: '2rem', width: '100%'}}>
          Finalizar e Ver Resultado
        </button>
      </div>
    </div>
  );
}

export default Responder;
