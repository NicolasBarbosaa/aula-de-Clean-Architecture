import '../../domain/entity/product_entity.dart';

//fica os modelo e as conversãos de dados entre o model e a entity
class ProductModel{
  String name;
  double price;
  int quantity;
  int productId;

  ProductModel({
    required this.name,
    required this.price,
    required this.quantity,
    required this.productId,
  });

//conversão de um obj entity em um model
  factory ProductModel.fromEntity(ProductEntity productEntity){
    return ProductModel(
        name: productEntity.name,
        price: productEntity.price, 
        quantity: productEntity.quantity,
        productId: productEntity.productId
       );
  }

//conversão de um objeto Model para um entity
  ProductEntity toEntity(){
    return ProductEntity( 
    name: name, 
    price: price, 
    quantity: quantity,
    productId: productId
     );
  }

//modelo de impressão da minha lista do data, onde vai ser armazanado meus produtos
@override
String toString(){
  return "nome: $name";
}

}


//construtor nomeado obrigatorio
// var produto = ProductModel(
//   name: name,
//    price: price, 
//    quantity: quantity, 
//    productId: productId
//    );
//construtor posicional
// var produto = ProductModel("Nicolas", 2.0, 30,1);