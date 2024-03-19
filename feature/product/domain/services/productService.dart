import '../entity/product_entity.dart';
import '../repository/productRepository.dart';
//lugar que defino os serviços
class ProductService{
  ProductRepository productRepository;

  // Constructor to inject the dependency of product repository class
  ProductService(this.productRepository);

  Future<void> addProductShoopCart(ProductEntity product)async {
    //valido o produto antes de adiciona-lo ao carrin
    product.productValidate();
    //aplico o desconto depois de validado
    product.discontAply();
    //pego meu produto que é passado como argumento e add ao addProduct esta
    //no meu repositório(lugar onde guardo as coisas)
    productRepository.addProduct(product);
  }

removeProductShopCar(ProductEntity product)async{
productRepository.removeProduct(product);
}

  Future <List<ProductEntity>> getProdutos() async{
    return productRepository.listProduct();
  }

  
}