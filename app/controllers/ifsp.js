module.exports.ifsp = (app, req, res) => {
    //aqui vamos fazer a chamada para o model do banco de dados.
    console.log('[Controller ifsp]');
    // dbConn = dbConnection();
    res.render('ifsp.ejs', { });
  };