import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom'; // Para botão voltar
import api from '../services/api';

function Resultados() {
  const navigate = useNavigate();
  const [tentativas, setTentativas] = useState([]);
  const [selectedTentativa, setSelectedTentativa] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    carregarTentativas();
  }, []);

  const carregarTentativas = async () => {
    try {
      const res = await api.get('/tentativas');
      // Ordenar por data decrescente (assumindo que o ID reflete a ordem, ou poderia ordenar por date string)
      const sorted = res.data.sort((a, b) => b.id - a.id);
      setTentativas(sorted);
      setLoading(false);
    } catch (error) {
      console.error("Erro ao carregar tentativas", error);
      setLoading(false);
    }
  };

  const handleVerDetalhes = async (id) => {
    try {
      const res = await api.get(`/tentativas/${id}`);
      setSelectedTentativa(res.data);
    } catch (error) {
      console.error("Erro ao carregar detalhes", error);
      alert("Erro ao carregar detalhes.");
    }
  };

  const calcularScore = (respostas) => {
    let vata = 0, pitta = 0, kapha = 0;
    respostas.forEach(r => {
        if (r.opcao.peso === 1) vata++;
        if (r.opcao.peso === 2) pitta++;
        if (r.opcao.peso === 3) kapha++;
    });
    return { vata, pitta, kapha };
  };

  return (
    <div className="container">
      <header className="hero">
        <h1>Resultados dos Questionários</h1>
        <button className="btn-secondary" onClick={() => navigate('/admin')} style={{marginTop: '1rem'}}>
          Voltar para Admin
        </button>
      </header>

      {/* LISTAGEM */}
      {!selectedTentativa ? (
        <div className="card" style={{width: '100%', maxWidth: '800px', overflowX: 'auto'}}>
            {loading ? <p>Carregando...</p> : (
                <table style={{width: '100%', borderCollapse: 'collapse', minWidth: '600px'}}>
                    <thead>
                        <tr style={{borderBottom: '2px solid #333'}}>
                            <th style={{padding: '1rem', textAlign: 'left'}}>Data</th>
                            <th style={{padding: '1rem', textAlign: 'left'}}>Participante</th>
                            <th style={{padding: '1rem', textAlign: 'left'}}>Questionário</th>
                            <th style={{padding: '1rem', textAlign: 'center'}}>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        {tentativas.map(t => (
                            <tr key={t.id} style={{borderBottom: '1px solid #444'}}>
                                <td style={{padding: '1rem'}}>{new Date(t.dataHora).toLocaleString()}</td>
                                <td style={{padding: '1rem'}}>
                                    {t.participante ? t.participante.nome : 'Anônimo'}
                                    {t.participante?.telefone && <div style={{fontSize: '0.8rem', opacity: 0.7}}>{t.participante.telefone}</div>}
                                </td>
                                <td style={{padding: '1rem'}}>{t.questionario?.titulo}</td>
                                <td style={{padding: '1rem', textAlign: 'center'}}>
                                    <button 
                                        className="btn-primary" 
                                        style={{padding: '0.5rem 1rem', fontSize: '0.9rem'}}
                                        onClick={() => handleVerDetalhes(t.id)}
                                    >
                                        Ver Resultado
                                    </button>
                                </td>
                            </tr>
                        ))}
                        {tentativas.length === 0 && (
                            <tr>
                                <td colSpan="4" style={{padding: '2rem', textAlign: 'center'}}>Nenhum resultado encontrado.</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            )}
        </div>
      ) : (
        /* DETALHES */
        <div className="card" style={{width: '100%', maxWidth: '800px'}}>
            <button className="btn-secondary" onClick={() => setSelectedTentativa(null)} style={{marginBottom: '1rem'}}>
                ← Voltar para Lista
            </button>
            
            <h2>Detalhes da Tentativa #{selectedTentativa.id}</h2>
            <div style={{marginBottom: '2rem', padding: '1rem', background: 'rgba(255,255,255,0.05)', borderRadius: '8px'}}>
                <p><strong>Participante:</strong> {selectedTentativa.participante?.nome}</p>
                <p><strong>Data:</strong> {new Date(selectedTentativa.dataHora).toLocaleString()}</p>
                <p><strong>Questionário:</strong> {selectedTentativa.questionario?.titulo}</p>
                
                {(() => {
                    const scores = calcularScore(selectedTentativa.respostas || []);
                    return (
                        <div style={{marginTop: '1rem', display: 'flex', gap: '20px'}}>
                            <div style={{background: '#2c2c2c', padding: '15px', borderRadius: '8px', flex: 1, textAlign: 'center', borderBottom: '4px solid #64ffda', color: '#ffffff'}}>
                                <div style={{fontSize: '0.9rem', fontWeight: 'bold', letterSpacing: '1px', color: '#64ffda', marginBottom: '5px'}}>VATA</div>
                                <div style={{fontSize: '2rem', fontWeight: 'bold'}}>{scores.vata}</div>
                            </div>
                            <div style={{background: '#2c2c2c', padding: '15px', borderRadius: '8px', flex: 1, textAlign: 'center', borderBottom: '4px solid #ff6b6b', color: '#ffffff'}}>
                                <div style={{fontSize: '0.9rem', fontWeight: 'bold', letterSpacing: '1px', color: '#ff6b6b', marginBottom: '5px'}}>PITTA</div>
                                <div style={{fontSize: '2rem', fontWeight: 'bold'}}>{scores.pitta}</div>
                            </div>
                            <div style={{background: '#2c2c2c', padding: '15px', borderRadius: '8px', flex: 1, textAlign: 'center', borderBottom: '4px solid #facc15', color: '#ffffff'}}>
                                <div style={{fontSize: '0.9rem', fontWeight: 'bold', letterSpacing: '1px', color: '#facc15', marginBottom: '5px'}}>KAPHA</div>
                                <div style={{fontSize: '2rem', fontWeight: 'bold'}}>{scores.kapha}</div>
                            </div>
                        </div>
                    );
                })()}
            </div>

            <h3>Respostas ({selectedTentativa.respostas?.length})</h3>
            <ul style={{listStyle: 'none', padding: 0}}>
                {selectedTentativa.respostas?.map((resp, index) => (
                    <li key={resp.id} style={{marginBottom: '1rem', paddingBottom: '1rem', borderBottom: '1px solid rgba(255,255,255,0.1)'}}>
                        <div style={{fontWeight: 'bold', marginBottom: '0.3rem'}}>
                            {index + 1}. {resp.pergunta.texto}
                        </div>
                        <div style={{color: '#8d64ffff'}}>
                            R: {resp.opcao.texto}
                        </div>
                    </li>
                ))}
            </ul>
        </div>
      )}
    </div>
  );
}

export default Resultados;
