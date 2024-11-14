module.exports = {
    // Função para consultar o cardápio
    consultarPedido: (dbConnection, callback) => {
      const sql = 'SELECT * FROM cardapio';
      dbConnection.query(sql, callback);
    },
  
    //salvando o pedido no banco de dados
    salvarPedido: (dbConnection, pedido, callback) => {
      // salvando o pedido na tabela pedidos
      const sqlPedido = 'INSERT INTO pedidos (nome_cliente, total) VALUES (?, ?)';
      dbConnection.query(sqlPedido, [pedido.nomeCliente, pedido.total], (error, result) => {
        if (error) {
          return callback(error, null);
        }
  
        const pedidoId = result.insertId; // ID do pedido recém-criado
  
        // Salvar os itens do pedido na tabela 'itens_pedido'
        const sqlItens = 'INSERT INTO itens_pedido (pedido_id, nome_item, quantidade, preco) VALUES ?';
        const itens = pedido.itens.map(item => [
          pedidoId, item.nome, item.quantidade, item.preco
        ]);
  
        dbConnection.query(sqlItens, [itens], (error, result) => {
          if (error) {
            return callback(error, null);
          }
  
          callback(null, result); // Pedido e itens salvos com sucesso
        });
      });
    }
  };
  