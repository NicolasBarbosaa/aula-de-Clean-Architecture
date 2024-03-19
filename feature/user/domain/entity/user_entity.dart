class UserEntity{
  String name;
  int age;
  String email;
  String password;
  int  userId;

  UserEntity({
    required this.name,
    required this.age,
    required this.email,
    required this.password,
    required  this.userId
  });

  ageValidate(){
    if(age < 18) { 
      throw Exception("under 18s are not allowed");
    }
  }

}
