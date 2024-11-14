const app = require('./config/server');
const routes = require('./app/routes/routes');
routes.home(app); // página sem bd
routes.cardapio(app); // página puxa e exibe bd
routes.sobreNos(app); // página sem bd
routes.galeria(app); // página puxa, exibe e escreve no bd
routes.ifsp(app); // página sem bd
routes.fazerPedido(app); // página puxa e exibe bd
routes.faleConosco(app);
routes.routeNotFound(app);
routes.teste(app);

