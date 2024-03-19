class ProductEntity {
  double price;
  String name;
  int quantity;
  int productId;

  ProductEntity({
    required this.name,
     required this.price, 
     required this.quantity,
      required this. productId
      });

  productValidate() {
    if (price <= 0 || name.isEmpty) {
      throw Exception("Não pode vender");
    }
  }
  
  discontAply(){
    if(quantity > 10){
      price =- (price *15/100);
    }
  }
}
