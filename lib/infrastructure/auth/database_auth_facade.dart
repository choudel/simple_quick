import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quick/domain/auth/auth_value_objects.dart';
import 'package:simple_quick/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_quick/domain/auth/i_auth_facade.dart';

@LazySingleton(as: IAuthFacade)
class DatabaseAuthFacade implements IAuthFacade {
  final DatabaseAuth _databaseAuth;

  DatabaseAuthFacade(this._databaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailandPassword(
      {required EmailAddress emailAddress, required PassWord passWord}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = passWord.getOrCrash();
    try {
      _databaseAuth.createUserWithEmailAndPassword(
          emailAddress: emailAddressStr, passWord: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'blalbla') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required PassWord passWord}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = passWord.getOrCrash();
    try {
      _databaseAuth.queryUserWithEmailAndPassword(
          emailAddress: emailAddressStr, passWord: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'blalbla') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}

class DatabaseAuth {
  final String emailAdress = "johnDoe@gmail.com";
  final String password = "lldslkdjs";
  DatabaseAuth({required String emailAdress, required String password});

  void createUserWithEmailAndPassword(
      {required String emailAddress, required String passWord}) {
    print(emailAddress + passWord);
  }

  void queryUserWithEmailAndPassword(
      {required String emailAddress, required String passWord}) {
    print(emailAddress + passWord);
  }
}
