module.exports.routeNotFound = (app, req, res) => {
    //aqui vamos fazer a chamada para o model do banco de dados.
    console.log('[Controller routeNotFound]');
    res.render('routeNotFound.ejs', { });
  };