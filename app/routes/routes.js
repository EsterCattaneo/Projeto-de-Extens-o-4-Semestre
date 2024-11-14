const { home } = require('../controllers/home');
const { cardapio } = require('../controllers/cardapio');
const { sobreNos } = require('../controllers/sobreNos');
const { galeria } = require('../controllers/galeria');
const { ifsp } = require('../controllers/ifsp');
const { teste } = require('../controllers/teste');
const { faleConosco, enviarMensagem } = require('../controllers/faleConosco');
const { fazerPedido, fecharPedido } = require('../controllers/fazerPedido');
const { adicionarComentario } = require('../models/galeria');
const { incrementoCurtida } = require('../models/galeria');

module.exports = {
  // Rota da página Home
  home: (app) => {
    app.get('/', function (req, res) {
      home(app, req, res); // Controlador da home
    });
  },
  // Rota do cardápio
  cardapio: (app) => {
    app.get('/cardapio', function (req, res) {
      cardapio(app, req, res); // Exibe o cardápio
    });
  },

  // Rota sobre a empresa
  sobreNos: (app) => {
    app.get('/sobreNos', function (req, res) {
      sobreNos(app, req, res); // Página sobre a empresa
    });
  },

  // Rota da galeria com a funcionalidade de adicionar comentário e incrementar curtida
  galeria: (app) => {
    app.get('/galeria', function (req, res) {
      galeria(app, req, res); // Página da galeria
    });

    // Adiciona um comentário na galeria
    app.post('/galeria/adicionar', function (req, res) {
      adicionarComentario(app, req, res);
    });

    // Incrementa a curtida na galeria
    app.post('/galeria/incremento', function (req, res) {
      incrementoCurtida(app, req, res);
    });
  },

  // Rota sobre o IFSP
  ifsp: (app) => {
    app.get('/ifsp', function (req, res) {
      ifsp(app, req, res); // Página sobre o IFSP
    });
  },

  // Rota para fazer pedido
  fazerPedido: (app) => {
    app.get('/fazerPedido', function (req, res) {
      fazerPedido(app, req, res); // Controlador de exibição do cardápio para fazer pedido
    });
  },

  // Rota para fechar pedido
  fecharPedido: (app) => {
    app.post('/fecharPedido', function (req, res) {
      fecharPedido(app, req, res); // Controlador para processar o fechamento e salvamento do pedido
    });
  },

  // Rota para o Fale Conosco
  faleConosco: (app) => {
    // Exibe o formulário de "Fale Conosco"
    app.get('/faleConosco', (req, res) => {
      faleConosco(req, res); // Controller que renderiza o formulário
    });
  
    // Processa o envio do formulário
    app.post('/faleConosco', enviarMensagem); // Chama a função de enviar a mensagem diretamente
  },

  // Rota para quando a URL não for encontrada
  routeNotFound: (app) => {
    app.get('*', function (req, res) {
      res.render('routeNotFound.ejs'); // Página de erro para rota não encontrada
});
  },
  teste: (app) => {
    app.get('/teste', function (req, res) {
      res.render('teste.ejs'); // Página de erro para rota não encontrada
});
  },
};
