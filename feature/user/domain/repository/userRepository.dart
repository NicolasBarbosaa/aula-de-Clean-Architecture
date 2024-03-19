import '../entity/user_entity.dart';

abstract class UserRepository{
  Future<void> addUser();
  Future<void> editUser();
  Future<void> deleteUser();
  Future<UserEntity> getUserByID(int userId);

} 