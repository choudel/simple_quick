import 'package:flutter/foundation.dart';
import 'package:simple_quick/domain/auth/auth_failure.dart';
import 'package:simple_quick/domain/auth/auth_value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailandPassword({
    required EmailAddress emailAddress,
    required PassWord passWord,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required PassWord passWord,
  });
}
