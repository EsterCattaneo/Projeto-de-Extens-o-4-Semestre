const dbConnection = require('../../config/dbConnection');
const { consultarPedido } = require('../models/fazerPedido');

module.exports.fazerPedido = (app, req, res) => {
    //aqui vamos fazer a chamada para o model do banco de dados.
    console.log('[Controller fazerPedido]');
    dbConn = dbConnection();
  
    consultarPedido(dbConn, (error, fazerPedido) =>{
      console.log('erro', error);
      console.log("Resultado", fazerPedido);
      res.render('fazerPedido.ejs', {menu: fazerPedido});
    })
  };