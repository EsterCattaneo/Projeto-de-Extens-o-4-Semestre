module.exports = {    
    consultarPedido: (dbConnection, callback) => {
        const sql = 'SELECT * FROM cardapio';
        dbConnection.query(sql, callback);
    }
}