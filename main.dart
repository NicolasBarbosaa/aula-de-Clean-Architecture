import 'feature/product/data/data_source/dados.dart';
import 'feature/product/data/repository/product_repo_impl.dart';
import 'feature/product/domain/entity/product_entity.dart';
import 'feature/product/domain/services/productService.dart';
import 'feature/product/presentation/controllers/product_controller.dart';
//o dart começa com a função main, sendo o ponta pé da linguagem
void main(){
  // o garçom que faz o serviço
  ProductRepositoryImpl productRepositoryImpl = ProductRepositoryImpl();
  //quem passa o serviço ao garçom, e passo o garçom 
  //como paremetro para ele receber os serviços
  ProductService productService = ProductService(productRepositoryImpl);
  var produto = ProductEntity(
    name: "IPhone15",
    price: 15400, 
    quantity: 200, 
    productId: 1
    );
    var produto1 = ProductEntity(
    name: "IPhone14",
    price: 15000, 
    quantity: 200, 
    productId: 2
    );

  ProductController  controller = ProductController(productService);
 
  controller.addProductToCar(produto1);
  controller.addProductToCar(produto);
  controller.listaDeProdutos();
  controller.removeEntity(produto1);
  controller.listaDeProdutos();
}

