import '../../domain/entity/product_entity.dart';
import '../../domain/repository/productRepository.dart';
import '../data_source/dados.dart';
import '../model/product_model.dart';

class ProductRepositoryImpl implements ProductRepository{

  @override
  Future<void> addProduct(ProductEntity productEntity) async{
    var product = ProductModel.fromEntity(productEntity);

    ProductData.lista.add(product);
    print("produto adicionado ao carrinho");

  }

  @override
  Future<void> editProduct(String name) {
   
    // TODO: implement editProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> listProduct() async {
    List<ProductEntity> lista = await ProductData.lista.map((e) => e.toEntity()).toList();
    print(lista);
    return lista;
  }

  @override
  Future<void> removeProduct(ProductEntity entity) async {
    int index = ProductData.lista.indexWhere((e) => e.name == entity.name);
    if (index != -1){
      ProductData.lista.removeAt(index);
  }else{
    print("não encontrado");
  }
  }
}