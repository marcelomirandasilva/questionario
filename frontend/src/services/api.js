import axios from 'axios';

const api = axios.create({
    baseURL: '/api', // O proxy do Vite redirecionará isso para http://localhost:8080
    headers: {
        'Content-Type': 'application/json',
    },
});

// Interceptador para capturar erros comuns de configuração (ex: Nginx retornando HTML em vez de JSON)
api.interceptors.response.use(
    response => {
        const contentType = response.headers['content-type'];
        if (contentType && contentType.includes('text/html')) {
            console.error("A API retornou HTML em vez de JSON. Verifique se o caminho da API está correto ou se o Nginx está configurado corretamente.");
            return Promise.reject(new Error("API returned HTML (index.html) instead of JSON Data."));
        }
        return response;
    },
    error => Promise.reject(error)
);

export default api;
