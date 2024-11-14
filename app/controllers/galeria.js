const dbConnection = require('../../config/dbConnection');
// const { } = require('../models/galeria');
const {consultarComentario, consultarCurtidas} = require('../models/galeria'); //improtando funcao da model para poder ver os comentarios e as curtidas

module.exports.galeria = (app, req, res) => {
  //aqui vamos fazer a chamada para o model do banco de dados.
  console.log('[Controller galeria]');
  dbConn = dbConnection();
  
  consultarComentario(dbConn, (error, comentarios) =>{ //funcao que eu chamei la da model
    console.log('erro', error);
    console.log("Resultado", comentarios);

    consultarCurtidas(dbConn, (error, curtidas) =>{
      console.log('erro', error);
      console.log("Resultado", curtidas);
      res.render('galeria.ejs', {likes: curtidas, comments: comentarios}); //renderizo a view galerias.ejs
    })
  })
};

  