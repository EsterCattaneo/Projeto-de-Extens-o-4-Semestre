const dbConnection = require('../../config/dbConnection');
const { consultarCardapio, adicionarPedido, editarPedido, excluirPedido } = require('../models/editarCardapio');

module.exports.editarCardapio = (req, res) => {
    //aqui vamos fazer a chamada para o model do banco de dados.
    console.log('[Controller Editar Cardapio]');
    dbConn = dbConnection();
  
    consultarCardapio(dbConn, (error, cardapio) =>{
      console.log('erro', error);
      console.log("Resultado", cardapio);
      res.render('editarCardapio.ejs', {menu: cardapio});
    })
};

module.exports.adicionarPedido = (req, res) => {
    const categoria  = req.body.categoria;
    const nome = req.body.nome;
    const detalhes = req.body.detalhes;
    const preco = req.body.preco;
    console.log('[Controller Adicionar Pedido]');
    
    // Estabelecendo a conexão com o banco
    dbConn = dbConnection();
    // Chamada ao model para cadastrar o usuário
    adicionarPedido(dbConn, categoria, nome, detalhes, preco, (error, result) => {
      if (error) {
        // Caso haja erro, passamos a variável erros com a mensagem de erro para a view
        console.log(error);
        res.redirect('/editarCardapio');
      } else {
        // Caso não haja erro, redireciona para a tela de login com sucesso
        res.redirect('/editarCardapio');
      }
    });
};

module.exports.editarPedido = (req, res) => {
  const id =  req.body.id;
  const categoria = req.body.categoria;
  const nome = req.body.nome;
  const detalhes = req.body.detalhes;
  const preco = req.body.preco;
  console.log('[Controller Editar Pedido]');

  // Estabelecendo a conexão com o banco
  dbConn = dbConnection();
  // Chamada ao model para cadastrar o usuário
  editarPedido(dbConn, categoria, nome, detalhes, preco, id, (error, result) => {
    if (error) {
      // Caso haja erro, passamos a variável erros com a mensagem de erro para a view
      console.log(error);
      res.redirect('/editarCardapio');
    } else {
      // Caso não haja erro, redireciona para a tela de login com sucesso
      res.redirect('/editarCardapio');
    }
  });
};


// Exclui um evento pelo ID
module.exports.excluirPedido = async (req, res) => {
  const { id } = req.params; // Extrai o ID do evento dos parâmetros da URL
  console.log('[Controller Excluir Pedido]');
  console.log(id);

  // Estabelecendo a conexão com o banco
  dbConn = dbConnection();
  // Chamada ao model para cadastrar o usuário
  excluirPedido(dbConn, id, (error, result) => {

    if (error) {
      // Caso haja erro, passamos a variável erros com a mensagem de erro para a view
      console.log(error);
      res.redirect('/editarCardapio');
    } else {
      // Caso não haja erro, redireciona para a tela de login com sucesso
      res.redirect('/editarCardapio');
    }
  });
};