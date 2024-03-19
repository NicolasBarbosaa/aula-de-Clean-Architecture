import '../../domain/entity/product_entity.dart';
import '../../domain/repository/productRepository.dart';
import '../data_source/dados.dart';
import '../model/product_model.dart';

class ProductRepositoryImpl implements ProductRepository{
  @override
  Future<void> addProduct(ProductEntity productEntity) async{
    var product = ProductModel.fromEntity(productEntity);
    ProductData.lista.add(product);
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<void> editProduct(String name) {
    // TODO: implement editProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> listProduct() {
    // TODO: implement listProduct
    throw UnimplementedError();
  }

  @override
  Future<void> removeProduct(String name) {
    // TODO: implement removeProduct
    throw UnimplementedError();
  }
  
}