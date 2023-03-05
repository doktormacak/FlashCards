// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
mixin _$AuthToken {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res, AuthToken>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res, $Val extends AuthToken>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthTokenCopyWith<$Res> implements $AuthTokenCopyWith<$Res> {
  factory _$$_AuthTokenCopyWith(
          _$_AuthToken value, $Res Function(_$_AuthToken) then) =
      __$$_AuthTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_AuthTokenCopyWithImpl<$Res>
    extends _$AuthTokenCopyWithImpl<$Res, _$_AuthToken>
    implements _$$_AuthTokenCopyWith<$Res> {
  __$$_AuthTokenCopyWithImpl(
      _$_AuthToken _value, $Res Function(_$_AuthToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_AuthToken(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthToken implements _AuthToken {
  const _$_AuthToken({required this.accessToken, required this.refreshToken});

  factory _$_AuthToken.fromJson(Map<String, dynamic> json) =>
      _$$_AuthTokenFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AuthToken(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthTokenCopyWith<_$_AuthToken> get copyWith =>
      __$$_AuthTokenCopyWithImpl<_$_AuthToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthTokenToJson(
      this,
    );
  }
}

abstract class _AuthToken implements AuthToken {
  const factory _AuthToken(
      {required final String accessToken,
      required final String refreshToken}) = _$_AuthToken;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$_AuthToken.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthTokenCopyWith<_$_AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}
