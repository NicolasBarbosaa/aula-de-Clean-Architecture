// nessa classe apenas criamos os metodos que iremos usar mas não implementamos
// será implementado em outro lugar e armazenamos aqui

import '../entity/product_entity.dart';

abstract class ProductRepository{
  //metodos de future, que vão fazer alguma ação no futuro e precisa de 
  //outras informações que possam estar a 2s na frente 
  //para dar tempo para a informação chegar até a aplicação 
  Future<void> addProduct(ProductEntity productEntity); 
  Future<void> removeProduct(ProductEntity productEntity);
  Future<void> editProduct(String name); 
  Future<List<ProductEntity>> listProduct();
  //crud =  create, read, update, delete
}