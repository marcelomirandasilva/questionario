import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Responder from './pages/Responder';
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
          <Route path="/responder/:id" element={<Responder />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
