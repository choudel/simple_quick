import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:simple_quick/domain/core/failure.dart';
import 'package:simple_quick/domain/core/value_objects.dart';
import 'package:simple_quick/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  const EmailAddress._(this.value);
}

class PassWord extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PassWord(String input) {
    return PassWord._(
      validatePassWord(input),
    );
  }
  const PassWord._(this.value);
}
