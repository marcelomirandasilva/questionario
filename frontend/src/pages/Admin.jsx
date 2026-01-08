import { useState, useEffect } from 'react';
import api from '../services/api';

function Admin() {
  const [questionarios, setQuestionarios] = useState([]);
  const [selectedQuiz, setSelectedQuiz] = useState('');
  const [nome, setNome] = useState('');
  const [telefone, setTelefone] = useState('');
  const [linkGerado, setLinkGerado] = useState('');
  const [ultimoConvite, setUltimoConvite] = useState(null);

  useEffect(() => {
    const isLogged = localStorage.getItem('isLoggedIn');
    if (!isLogged) {
        window.location.href = '/login'; // Forçar redirect
        return;
    }

    // Adiciona parâmetro de tamanho para garantir que o Data REST traga tudo (default é 20)
    api.get('/questionarios?size=1000')
      .then(res => {
          let dados = res.data;
          // Suporte a Spring Data REST (HATEOAS) caso o endpoint automático intercepte
          if (dados._embedded && dados._embedded.questionarios) {
              dados = dados._embedded.questionarios;
          }
          
          if (Array.isArray(dados)) {
            setQuestionarios(dados);
          } else {
             console.error("Formato inesperado:", res.data);
             setQuestionarios([]);
          }
      })
      .catch(err => {
          console.error("Erro ao carregar questionários", err);
          setQuestionarios([]);
      });
  }, []);

  const handleGerarLink = async (e) => {
    e.preventDefault();
    if (!selectedQuiz || !nome) return;

    try {
      // 1. Chamar API para gerar convite
      const res = await api.post('/convites/gerar', {
        questionarioId: parseInt(selectedQuiz),
        nome,
        telefone
      });

      const token = res.data.token;
      // const link = `${window.location.origin}/responder/${token}`; // URL baseada no token
      // Melhor usar /convite/:token para diferenciar da rota antiga de ID
      const link = `${window.location.origin}/convite/${token}`;
      
      setLinkGerado(link);
      setUltimoConvite(res.data);
    } catch (error) {
      console.error("Erro ao gerar convite", error);
      alert("Erro ao gerar convite");
    }
  };

  const copiarLink = async () => {
    // Tentar API moderna primeiro (Só funciona em HTTPS ou Localhost)
    if (navigator.clipboard && navigator.clipboard.writeText) {
        try {
            await navigator.clipboard.writeText(linkGerado);
            alert("Link copiado!");
            return;
        } catch (err) {
            console.error('Erro ao usar clipboard API:', err);
        }
    }

    // Fallback para HTTP (Contexto não seguro)
    try {
        const textArea = document.createElement("textarea");
        textArea.value = linkGerado;
        
        // Garantir que o elemento faça parte do DOM mas não atrapalhe o layout
        textArea.style.position = "fixed";
        textArea.style.left = "-9999px";
        textArea.style.top = "0";
        document.body.appendChild(textArea);
        
        textArea.focus();
        textArea.select();
        
        const successful = document.execCommand('copy');
        document.body.removeChild(textArea);
        
        if (successful) {
            alert("Link copiado (Modo HTTP)!");
        } else {
            throw new Error("Comando copy falhou");
        }
    } catch (err2) {
        console.error('Fallback falhou:', err2);
        prompt("Não foi possível copiar automaticamente (requer HTTPS). Copie o link abaixo manualmente:", linkGerado);
    }
  };

  const enviarWhatsApp = () => {
    if (!telefone) return;
    // Formatar telefone (remover caracteres não numéricos)
    const tel = telefone.replace(/\D/g, '');
    const texto = encodeURIComponent(`Olá ${nome}, aqui está o link para o seu questionário: ${linkGerado}`);
    window.open(`https://wa.me/55${tel}?text=${texto}`, '_blank');
  };

  return (
    <div className="container">
      <header className="hero">
        <h1>Gerador de Convites</h1>
        <p>Crie links únicos e seguros para seus clientes.</p>
        <div style={{marginTop: '1rem'}}>
            <a href="/admin/resultados" className="btn-secondary" style={{textDecoration: 'none', display: 'inline-block'}}>
                Ver Resultados dos Participantes
            </a>
        </div>
      </header>

      <div className="card" style={{maxWidth: '600px', margin: '0 auto', textAlign: 'left'}}>
        <form onSubmit={handleGerarLink}>
          <div style={{marginBottom: '1rem'}}>
            <label style={{display: 'block', marginBottom: '0.5rem'}}>Questionário:</label>
            <select 
              value={selectedQuiz} 
              onChange={e => setSelectedQuiz(e.target.value)}
              style={{width: '100%', padding: '0.8rem', borderRadius: '4px', background: '#333', color: '#fff', border: '1px solid #555'}}
              required
            >
              <option value="">Selecione...</option>
              {questionarios.map(q => (
                <option key={q.id} value={q.id}>{q.titulo}</option>
              ))}
            </select>
          </div>

          <div style={{marginBottom: '1rem'}}>
            <label style={{display: 'block', marginBottom: '0.5rem'}}>Nome do Participante:</label>
            <input 
              type="text" 
              value={nome}
              onChange={e => setNome(e.target.value)}
              placeholder="Ex: Maria da Silva"
              style={{width: '100%', padding: '0.8rem', borderRadius: '4px', background: '#333', color: '#fff', border: '1px solid #555'}}
              required
            />
          </div>

          <div style={{marginBottom: '1rem'}}>
            <label style={{display: 'block', marginBottom: '0.5rem'}}>WhatsApp (Opcional):</label>
            <input 
              type="text" 
              value={telefone}
              onChange={e => setTelefone(e.target.value)}
              placeholder="Ex: 11999999999"
              style={{width: '100%', padding: '0.8rem', borderRadius: '4px', background: '#333', color: '#fff', border: '1px solid #555'}}
            />
          </div>

          <button type="submit" className="btn-primary" style={{width: '100%'}}>
            Gerar Link Seguro
          </button>
        </form>

        {linkGerado && (
          <div style={{marginTop: '2rem', padding: '1rem', background: 'rgba(100, 255, 218, 0.1)', borderRadius: '8px', border: '1px solid #64ffda'}}>
            <p style={{fontWeight: 'bold', color: '#64ffda'}}>Convite Gerado com Sucesso!</p>
            <p style={{wordBreak: 'break-all', fontSize: '0.9rem', margin: '1rem 0'}}>{linkGerado}</p>
            
            <div style={{display: 'flex', gap: '10px'}}>
              <button onClick={copiarLink} className="btn-secondary" style={{flex: 1, fontSize: '0.9rem'}}>
                Copiar Link
              </button>
              {telefone && (
                <button onClick={enviarWhatsApp} className="btn-primary" style={{flex: 1, fontSize: '0.9rem', backgroundColor: '#25D366', borderColor: '#25D366', color: '#fff'}}>
                  Enviar no Zap
                </button>
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

export default Admin;
