import { useState, useEffect } from 'react';
import api from '../services/api'; // Importando a API configurada
import { Link } from 'react-router-dom';

function Home() {
  const [questionarios, setQuestionarios] = useState([]);

  useEffect(() => {
    // Busca os questionários do backend ao carregar
    api.get('/questionarios')
      .then(response => setQuestionarios(response.data))
      .catch(error => console.error("Erro ao buscar questionários:", error));
  }, []);

  return (
    <div className="container">
      <header className="hero">
        <h1>Meus Questionários</h1>
        <p>Crie, edite e gerencie seus questionários de forma simples.</p>
        <button className="btn-primary">Criar Novo Questionário</button>
      </header>

      <main className="questionario-list">
        {questionarios.length === 0 ? (
          <div className="empty-state">
            <p>Nenhum questionário encontrado.</p>
          </div>
        ) : (
          questionarios.map(q => (
            <div key={q.id} className="card">
              <h3>{q.titulo}</h3>
              <p>{q.descricao}</p>
              <Link to={`/responder/${q.id}`} className="link">Responder</Link>
            </div>
          ))
        )}
      </main>
    </div>
  );
}

export default Home;
