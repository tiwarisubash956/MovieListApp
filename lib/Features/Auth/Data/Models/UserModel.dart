import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required String uid, required String email, String? displayName})
      : super(uid: uid, email: email, displayName: displayName);

  factory UserModel.fromFirebaseUser(user) {
    return UserModel(
      uid: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
    );
  }
}
