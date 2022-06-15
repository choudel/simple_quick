import 'dart:html';

import 'package:simple_quick/domain/core/failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    return Error.safeToString(
        'Encountred a Value failure at an unrecoverable point . terminating. Failure was ; $valueFailure');
  }
}
