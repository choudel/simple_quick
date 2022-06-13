// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyCardOfEntry _$MyCardOfEntryFromJson(Map<String, dynamic> json) {
  return _MyCardOfEntry.fromJson(json);
}

/// @nodoc
mixin _$MyCardOfEntry {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCardOfEntryCopyWith<MyCardOfEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCardOfEntryCopyWith<$Res> {
  factory $MyCardOfEntryCopyWith(
          MyCardOfEntry value, $Res Function(MyCardOfEntry) then) =
      _$MyCardOfEntryCopyWithImpl<$Res>;
  $Res call({int id, String username, String password, bool isPremium});
}

/// @nodoc
class _$MyCardOfEntryCopyWithImpl<$Res>
    implements $MyCardOfEntryCopyWith<$Res> {
  _$MyCardOfEntryCopyWithImpl(this._value, this._then);

  final MyCardOfEntry _value;
  // ignore: unused_field
  final $Res Function(MyCardOfEntry) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? isPremium = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: isPremium == freezed
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MyCardOfEntryCopyWith<$Res>
    implements $MyCardOfEntryCopyWith<$Res> {
  factory _$$_MyCardOfEntryCopyWith(
          _$_MyCardOfEntry value, $Res Function(_$_MyCardOfEntry) then) =
      __$$_MyCardOfEntryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String username, String password, bool isPremium});
}

/// @nodoc
class __$$_MyCardOfEntryCopyWithImpl<$Res>
    extends _$MyCardOfEntryCopyWithImpl<$Res>
    implements _$$_MyCardOfEntryCopyWith<$Res> {
  __$$_MyCardOfEntryCopyWithImpl(
      _$_MyCardOfEntry _value, $Res Function(_$_MyCardOfEntry) _then)
      : super(_value, (v) => _then(v as _$_MyCardOfEntry));

  @override
  _$_MyCardOfEntry get _value => super._value as _$_MyCardOfEntry;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? isPremium = freezed,
  }) {
    return _then(_$_MyCardOfEntry(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: isPremium == freezed
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyCardOfEntry with DiagnosticableTreeMixin implements _MyCardOfEntry {
  const _$_MyCardOfEntry(
      {required this.id,
      required this.username,
      required this.password,
      this.isPremium = false});

  factory _$_MyCardOfEntry.fromJson(Map<String, dynamic> json) =>
      _$$_MyCardOfEntryFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String password;
  @override
  @JsonKey()
  final bool isPremium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCardOfEntry(id: $id, username: $username, password: $password, isPremium: $isPremium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyCardOfEntry'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isPremium', isPremium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCardOfEntry &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.isPremium, isPremium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isPremium));

  @JsonKey(ignore: true)
  @override
  _$$_MyCardOfEntryCopyWith<_$_MyCardOfEntry> get copyWith =>
      __$$_MyCardOfEntryCopyWithImpl<_$_MyCardOfEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyCardOfEntryToJson(this);
  }
}

abstract class _MyCardOfEntry implements MyCardOfEntry {
  const factory _MyCardOfEntry(
      {required final int id,
      required final String username,
      required final String password,
      final bool isPremium}) = _$_MyCardOfEntry;

  factory _MyCardOfEntry.fromJson(Map<String, dynamic> json) =
      _$_MyCardOfEntry.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  bool get isPremium => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyCardOfEntryCopyWith<_$_MyCardOfEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
