import 'package:mynotes/services/auth/auth_user.dart';

//this is an abstract class suitable for all types o providers(firebase,apple , etc)need to have separate concrete implementation for each
abstract class AuthProvider {
  Future<void> initialize();
  AuthUser? get currentUser;
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}
