
const dbConnection = require('../../config/dbConnection');

module.exports.autenticarUsuario = (dbConn, email, senha, callback) => {
    const sql = 'SELECT * FROM clientes WHERE email = (?)';
    dbConn.query(sql, [email, senha], callback);
};