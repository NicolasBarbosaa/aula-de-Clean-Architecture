//controller se comunica com o domain e o domain para se 
//comunicar com a data precisa de um repositorio
import '../../domain/entity/product_entity.dart';
import '../../domain/services/productService.dart';

class ProductController{
  //o controller precisa se comunicar com algum serviço
  //para poder realizar suas tarefas
  ProductService productService;
  ProductController(this.productService);

  void addProductToCar(ProductEntity product){
    productService.addProductShoopCart(product);
  }
  
  Future <List<ProductEntity>> listaDeProdutos()async{
    return productService.getProdutos();
  }

  void removeEntity(ProductEntity productEntity){
    productService.removeProductShopCar(productEntity);
  }


}