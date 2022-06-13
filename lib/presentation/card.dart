import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class MyCardOfEntry with _$MyCardOfEntry {
  const factory MyCardOfEntry(
      {required int id,
      required String username,
      required String password,
      @Default(false) bool isPremium}) = _MyCardOfEntry;
  factory MyCardOfEntry.fromJson(Map<String, dynamic> json) =>
      _$MyCardOfEntryFromJson(json);
}
