import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import api from '../services/api';

function Responder({ mode = 'public' }) {
  // Se mode='token', usamos :token da URL. Se 'public', usamos :id da URL.
  const { id, token } = useParams();
  const navigate = useNavigate();
  
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  
  const [questionario, setQuestionario] = useState(null);
  const [convite, setConvite] = useState(null);
  const [respostas, setRespostas] = useState({}); 
  const [indiceAtual, setIndiceAtual] = useState(0);

  useEffect(() => {
    setLoading(true);
    if (mode === 'token' && token) {
      // 1. Validar Token
      api.get(`/convites/validar/${token}`)
        .then(res => {
          setConvite(res.data);
          // 2. Carregar Questionário associado ao convite
          return api.get(`/questionarios/${res.data.questionario.id}?projection=completo`);
        })
        .then(res => {
          console.log("DADOS RECEBIDOS:", res.data); // DEBUG
          
          let quest = res.data;
          // Normalizar se vier HATEOAS
          if (quest._embedded && quest._embedded.perguntas) {
              quest.perguntas = quest._embedded.perguntas;
          }
          
          setQuestionario(quest);
          setLoading(false);
        })
        .catch(err => {
          console.error("Erro ao validar convite", err);
          if (err.response && err.response.status === 410) {
            setError("Este convite já foi utilizado e não está mais disponível.");
          } else {
            setError("Convite inválido ou expirado.");
          }
          setLoading(false);
        });
    } else if (id) {
      // Modo legado/teste (sem token)
      api.get(`/questionarios/${id}?projection=completo`)
        .then(response => {
           console.log("DADOS ID RECEBIDOS:", response.data); // DEBUG
           let quest = response.data;
           if (quest._embedded && quest._embedded.perguntas) {
               quest.perguntas = quest._embedded.perguntas;
           }
           setQuestionario(quest);
           setLoading(false);
        })
        .catch(error => {
           console.error("Erro ao carregar questionário", error);
           setError("Questionário não encontrado.");
           setLoading(false);
        });
    }
  }, [id, token, mode]);
  

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

  const calcularResultado = async () => {
    // 1. Validar se respondeu algo
    const totalRespondido = Object.keys(respostas).length;
    if (totalRespondido === 0) {
      alert("Por favor, responda o questionário antes de finalizar.");
      return;
    }

    // 2. Montar Payload
    // 2. Montar Payload com Tipos Corretos
    const respostasMap = {};
    Object.keys(respostas).forEach(key => {
        // Garantir que a chave (PerguntaId) e Valor (OpcaoId) sejam numéricos no JSON
        // Nota: Em JS chaves de objeto são strings, mas o valor deve ser numérico
        respostasMap[key] = parseInt(respostas[key].id); 
    });

    const payload = {
        token: (mode === 'token' && token) ? token : null,
        questionarioId: (mode === 'public' && id) ? parseInt(id) : null,
        respostas: respostasMap
    };
    
    console.log("Enviando Payload para /tentativas:", payload); // DEBUG

    setLoading(true);

    try {
        const res = await api.post('/tentativas', payload);
        const { scores } = res.data;
        
        alert(`Obrigado, ${convite ? convite.nomeConvidado : 'Visitante'}!\n\nResultado Final Salvo:\nVata: ${scores.vata}\nPitta: ${scores.pitta}\nKapha: ${scores.kapha}`);
        
        navigate('/');
    } catch (err) {
        console.error("Erro ao salvar tentativa", err);
        const errorMsg = typeof err.response?.data === 'string' ? err.response.data : "Erro ao salvar resposta.";
        alert(errorMsg);
        setLoading(false);
    }
  };

  if (loading) return <div className="container"><p>Carregando...</p></div>;
  
  if (error) {
    return (
        <div className="container">
            <div className="card" style={{textAlign: 'center', padding: '3rem'}}>
                <h2 style={{color: '#ff6b6b'}}>Acesso Negado</h2>
                <p>{error}</p>
                <button className="btn-secondary" onClick={() => navigate('/')} style={{marginTop: '1rem'}}>Voltar ao Início</button>
            </div>
        </div>
    );
  }

  if (!questionario) return null;

  // Proteção contra questionário sem perguntas
  if (!questionario.perguntas || questionario.perguntas.length === 0) {
      return (
          <div className="container">
              <div className="card">
                  <h3>Este questionário ainda não possui perguntas cadastradas.</h3>
                  <button className="btn-secondary" onClick={() => navigate('/')}>Voltar</button>
              </div>
          </div>
      );
  }

  const perguntaAtual = questionario.perguntas[indiceAtual];
  // Proteção adicional caso o índice saia do range (embora improvável com a lógica atual)
  if (!perguntaAtual) return <div>Erro ao carregar pergunta.</div>;

  const progresso = ((indiceAtual + 1) / questionario.perguntas.length) * 100;
  const isUltima = indiceAtual === questionario.perguntas.length - 1;
  const respondeuAtual = !!respostas[perguntaAtual.id];

  return (
    <div className="container">
      <header className="hero" style={{marginBottom: '1rem'}}>
        {convite && (
            <div style={{marginBottom: '0.5rem', fontSize: '1.2rem', color: '#64ffda'}}>
                Olá, {convite.nomeConvidado}!
            </div>
        )}
        <h1>{questionario.titulo}</h1>
        
        <div style={{width: '100%', maxWidth: '600px', height: '10px', backgroundColor: 'rgba(255,255,255,0.2)', borderRadius: '5px', margin: '1rem auto', overflow: 'hidden'}}>
            <div style={{width: `${progresso}%`, height: '100%', backgroundColor: '#64ffda', transition: 'width 0.3s ease'}}></div>
        </div>
        <p style={{fontSize: '0.9rem', opacity: 0.8}}>Pergunta {indiceAtual + 1} de {questionario.perguntas.length}</p>
      </header>

      <div style={{width: '100%', maxWidth: '800px', textAlign: 'left', minHeight: '300px'}}>
        
        <div className="card fade-in" key={perguntaAtual.id} style={{marginBottom: '1.5rem'}}>
            <h3>{indiceAtual + 1}. {perguntaAtual.texto}</h3>
            <div className="opcoes-list">
                {perguntaAtual.opcoes?.map(opcao => {
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
