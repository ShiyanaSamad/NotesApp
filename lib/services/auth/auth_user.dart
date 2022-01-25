import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable //this class and its descendants are all immutable
class AuthUser {
  final bool isEmailVerified;

  AuthUser(this.isEmailVerified);

  factory AuthUser.fromFirebase(User user) =>
      AuthUser(user.emailVerified); //created a factory constructor
}
