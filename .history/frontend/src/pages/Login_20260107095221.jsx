import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import api from '../services/api';

function Login() {
  const navigate = useNavigate();
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState(null);

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const res = await api.post('/auth/login', { username, password });
      
      // Salvar sessão (simples)
      localStorage.setItem('user', JSON.stringify(res.data.user)); // ou token se tivesse
      localStorage.setItem('isLoggedIn', 'true');
      
      navigate('/admin');
    } catch (err) {
      setError("Usuário ou senha inválidos");
      console.error(err);
    }
  };

  return (
    <div className="container">
      <header className="hero">
        <h1>Admin Login</h1>
        <p>Acesso restrito</p>
      </header>
      
      <div className="card" style={{maxWidth: '60px', margin: '0 auto', textAlign: 'left'}}>
        <form onSubmit={handleLogin}>
          <div style={{marginBottom: '1rem'}}>
            <label style={{display: 'block', marginBottom: '0.5rem'}}>Usuário:</label>
            <input 
              type="text" 
              value={username}
              onChange={e => setUsername(e.target.value)}
              style={{width: '100%', padding: '0.8rem', borderRadius: '4px', background: '#333', color: '#fff', border: '1px solid #555'}}
            />
          </div>
          <div style={{marginBottom: '1rem'}}>
             <label style={{display: 'block', marginBottom: '0.5rem'}}>Senha:</label>
             <input 
               type="password" 
               value={password}
               onChange={e => setPassword(e.target.value)}
               style={{width: '100%', padding: '0.8rem', borderRadius: '4px', background: '#333', color: '#fff', border: '1px solid #555'}}
             />
          </div>
          {error && <p style={{color: '#ff6b6b', marginBottom: '1rem'}}>{error}</p>}
          <button type="submit" className="btn-primary" style={{width: '100%'}}>Entrar</button>
        </form>
      </div>
    </div>
  );
}

export default Login;
