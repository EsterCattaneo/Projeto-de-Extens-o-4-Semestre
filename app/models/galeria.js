module.exports = {  //usando o module exports para tornar acessivel em outros arquivos o modulo, e exportando o bojeto que contem todas as funções
    consultarComentario: (dbConnection, callback) => { //buscaando os comentarios
        //console.log('Model da home');
        const sql = 'SELECT cardapio_id, comentario FROM galeria'; //busca todos os regisros da tabela comentario e cardapio id
        dbConnection.query(sql, callback); //fazendo uma conexao direta com o banco, o callbakc é usado para manipular os resultados e tratar os erros
    },

    adicionarComentario: (app, req, res) => {
        // Pegar os dados enviados pelo formulário
        const cliente_id = req.query.cliente_id; // ID do cliente enviado pela URL
        const cardapio_id = req.query.cardapio_id; // ID da obra enviado pela URL
        const comentario = req.body.comentario; // Comentário enviado pelo formulário
    
        // Conexão com o banco de dados
        const dbConnection = require('../../config/dbConnection')();
    
        // Comando SQL para inserir o comentário na tabela de comentários
        const sql = 'INSERT INTO galeria (cliente_id, cardapio_id, comentario) VALUES (?, ?, ?)';
    
        dbConnection.query(sql, [cliente_id, cardapio_id, comentario], (err, result) => {
            if (err) {
                console.error('Erro ao inserir o comentário: ', err);
                res.status(500).send('Erro ao adicionar comentário.');
                return;
            }
            console.log('Comentário inserido com sucesso!');
    
            // Redirecionar de volta para a página principal
            res.redirect('/galeria');
        });
    },

    consultarCurtidas: (dbConnection, callback) => {
        //console.log('Model da home');
        const sql = 'SELECT * FROM curtida'; //consulta todos as colunas da tabela curtida
        dbConnection.query(sql, callback);
    },

    incrementoCurtida: (app, req, res) => {
        const cardapio_id = req.query.cardapio_id; // ID do item do cardápio
    
        // Conexão com o banco de dados
        const dbConnection = require('../../config/dbConnection')();
    
        // aqui eu to obtendo o número atual de curtidas para incrementar
        const getCurrentLikesSql = 'SELECT curtidas FROM curtida WHERE cardapio_id = ?';
        dbConnection.query(getCurrentLikesSql, [cardapio_id], (err, results) => {
            if (err) {
                console.error('Erro ao obter curtidas:', err);
                res.status(500).send('Erro ao incrementar curtidas.');
                return;
            }
    
            let curtidas_new = results[0].curtidas + 1;
    
            // Atualizar curtidas no banco de dados
            const updateLikesSql = 'UPDATE curtida SET curtidas = ? WHERE cardapio_id = ?';
            dbConnection.query(updateLikesSql, [curtidas_new, cardapio_id], (err, result) => {
                if (err) {
                    console.error('Erro ao incrementar curtidas:', err);
                    res.status(500).send('Erro ao incrementar curtidas.');
                    return;
                }
                console.log('Curtida incrementada com sucesso!');
                res.redirect('/galeria');
            });
        });
    }
}