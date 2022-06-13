// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyCardOfEntry _$$_MyCardOfEntryFromJson(Map<String, dynamic> json) =>
    _$_MyCardOfEntry(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MyCardOfEntryToJson(_$_MyCardOfEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'isPremium': instance.isPremium,
    };
