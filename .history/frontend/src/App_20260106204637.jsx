import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Responder from './pages/Responder';
import Admin from './pages/Admin';
import Login from './pages/Login';
import './index.css';

function App() {
  return (
    <Router>
      <div className="app-layout">
        <nav className="navbar">
          <div className="logo">Questionário App</div>
        </nav>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/login" element={<Login />} />
          <Route path="/admin" element={<Admin />} />
          {/* Rota temporária para testes diretos */}
          <Route path="/responder/:id" element={<Responder mode="public" />} />
          {/* Nova rota oficial via Token */}
          <Route path="/convite/:token" element={<Responder mode="token" />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
