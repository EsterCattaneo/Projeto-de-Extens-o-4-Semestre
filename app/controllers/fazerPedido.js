const dbConnection = require('../../config/dbConnection');
const { consultarPedido, salvarPedido } = require('../models/fazerPedido');

module.exports.fazerPedido = (app, req, res) => {
  console.log('[Controller fazerPedido]');
  const dbConn = dbConnection();

  // Consulta o cardápio
  consultarPedido(dbConn, (error, fazerPedido) => {
    if (error) {
      console.log('Erro:', error);
      return res.status(500).send('Erro ao consultar o cardápio');
    }
    console.log('Resultado:', fazerPedido);
    res.render('fazerPedido.ejs', { menu: fazerPedido });
  });
};

module.exports.fecharPedido = (app, req, res) => {
  console.log('[Controller fecharPedido]');

  // Extrai os dados do pedido via posttt
  const pedido = req.body;

  // Conectar ao banco de dados
  const dbConn = dbConnection();

  // Chamar a função para salvar o pedido no banco de dados
  salvarPedido(dbConn, pedido, (error, result) => {
    if (error) {
      console.log('Erro ao salvar pedido:', error);
      return res.status(500).send('Erro ao salvar pedido');
    }

    console.log('Pedido salvo com sucesso:', result);
    res.send('Pedido realizado com sucesso!');
  });
};
