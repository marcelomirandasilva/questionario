import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import api from '../services/api';

function Responder() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [questionario, setQuestionario] = useState(null);
  const [respostas, setRespostas] = useState({}); // Mapa de perguntaId -> opcao
  const [indiceAtual, setIndiceAtual] = useState(0);

  useEffect(() => {
    api.get(`/questionarios/${id}`)
      .then(response => setQuestionario(response.data))
      .catch(error => console.error("Erro ao carregar questionário", error));
  }, [id]);

  const handleSelectOption = (perguntaId, opcao) => {
    setRespostas(prev => ({
      ...prev,
      [perguntaId]: opcao 
    }));
  };

  const handleProxima = () => {
    if (indiceAtual < questionario.perguntas.length - 1) {
      setIndiceAtual(indiceAtual + 1);
    }
  };

  const handleAnterior = () => {
    if (indiceAtual > 0) {
      setIndiceAtual(indiceAtual - 1);
    }
  };

  const calcularResultado = () => {
    // Lógica simples de contagem para V, P, K
    let vata = 0;
    let pitta = 0;
    let kapha = 0;

    Object.values(respostas).forEach(op => {
      // Assumindo pesos 1=V, 2=P, 3=K baseado na carga de dados
      // Mas idealmente o backend deveria processar isso
      if (op.peso === 1) vata++;
      if (op.peso === 2) pitta++;
      if (op.peso === 3) kapha++;
    });

    const total = vata + pitta + kapha;
    if (total === 0) {
      alert("Por favor, responda o questionário antes de finalizar.");
      return;
    }

    alert(`Resultado Preliminar:\nVata: ${vata}\nPitta: ${pitta}\nKapha: ${kapha}`);
    // Futuro: Salvar no backend via POST
  };

  if (!questionario) return <div className="container"><p>Carregando...</p></div>;

  const perguntaAtual = questionario.perguntas[indiceAtual];
  const progresso = ((indiceAtual + 1) / questionario.perguntas.length) * 100;
  const isUltima = indiceAtual === questionario.perguntas.length - 1;
  const respondeuAtual = !!respostas[perguntaAtual.id];

  return (
    <div className="container">
      <header className="hero" style={{marginBottom: '1rem'}}>
        <h1>{questionario.titulo}</h1>
        {/* Barra de Progresso */}
        <div style={{width: '100%', maxWidth: '600px', height: '10px', backgroundColor: 'rgba(255,255,255,0.2)', borderRadius: '5px', margin: '1rem auto', overflow: 'hidden'}}>
            <div style={{width: `${progresso}%`, height: '100%', backgroundColor: '#64ffda', transition: 'width 0.3s ease'}}></div>
        </div>
        <p style={{fontSize: '0.9rem', opacity: 0.8}}>Pergunta {indiceAtual + 1} de {questionario.perguntas.length}</p>
      </header>

      <div style={{width: '100%', maxWidth: '800px', textAlign: 'left', minHeight: '300px'}}>
        
        <div className="card fade-in" key={perguntaAtual.id} style={{marginBottom: '1.5rem'}}>
            <h3>{indiceAtual + 1}. {perguntaAtual.texto}</h3>
            <div className="opcoes-list">
                {perguntaAtual.opcoes.map(opcao => {
                    const isSelected = respostas[perguntaAtual.id]?.id === opcao.id;
                    return (
                        <div 
                            key={opcao.id} 
                            onClick={() => handleSelectOption(perguntaAtual.id, opcao)}
                            className={isSelected ? 'opcao-item selected' : 'opcao-item'}
                            style={{
                                padding: '1rem', 
                                margin: '0.5rem 0', 
                                borderRadius: '8px', 
                                border: isSelected ? '2px solid #64ffda' : '1px solid rgba(255,255,255,0.1)',
                                background: isSelected ? 'rgba(100,255,218,0.1)' : 'rgba(255,255,255,0.05)',
                                cursor: 'pointer',
                                transition: 'all 0.2s'
                            }}
                        >
                            <span style={{fontWeight: isSelected ? 'bold' : 'normal', color: isSelected ? '#64ffda' : 'inherit'}}>
                                {opcao.texto}
                            </span>
                        </div>
                    );
                })}
            </div>
        </div>

        <div style={{display: 'flex', justifyContent: 'space-between', marginTop: '2rem'}}>
            <button 
                className="btn-secondary" 
                onClick={handleAnterior} 
                disabled={indiceAtual === 0}
                style={{opacity: indiceAtual === 0 ? 0.5 : 1, cursor: indiceAtual === 0 ? 'not-allowed' : 'pointer'}}
            >
                ← Anterior
            </button>

            {isUltima ? (
                <button 
                    className="btn-primary" 
                    onClick={calcularResultado}
                    disabled={!respondeuAtual}
                    style={{opacity: !respondeuAtual ? 0.5 : 1}}
                >
                    Finalizar
                </button>
            ) : (
                <button 
                    className="btn-primary" 
                    onClick={handleProxima}
                    // Opcional: Bloquear avanço se não respondeu
                    // disabled={!respondeuAtual}
                    // style={{opacity: !respondeuAtual ? 0.5 : 1}}
                >
                    Próxima →
                </button>
            )}
        </div>

      </div>
    </div>
  );
}

export default Responder;
