module.exports = {    
    consultarCardapio: (dbConnection, callback) => {
        const sql = 'SELECT * FROM cardapio';
        dbConnection.query(sql, callback);
    },

    adicionarPedido: (dbConnection, categoria, nome, detalhes, preco, callback) => {
        const sql = 'INSERT INTO cardapio (categoria, nome_item, detalhes, preco) VALUES (?, ?, ?, ?)';
        dbConnection.query(sql, [categoria, nome, detalhes, preco], callback);
    },

    editarPedido: (dbConnection, categoria, nome, detalhes, preco, id, callback) => {
        const sql = 'UPDATE cardapio SET categoria = ?, nome_item = ?, detalhes = ?, preco = ? WHERE id = ?';
        dbConnection.query(sql, [categoria, nome, detalhes, preco, id], callback);
    },

    excluirPedido: (dbConnection, id, callback) => {
        const sql = 'DELETE FROM cardapio WHERE id = ?';
        dbConnection.query(sql, [id], callback);
    }
}
