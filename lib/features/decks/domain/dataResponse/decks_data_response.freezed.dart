// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decks_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DecksDataResponse _$DecksDataResponseFromJson(Map<String, dynamic> json) {
  return _DecksDataResponse.fromJson(json);
}

/// @nodoc
mixin _$DecksDataResponse {
  List<Deck> get decks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecksDataResponseCopyWith<DecksDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecksDataResponseCopyWith<$Res> {
  factory $DecksDataResponseCopyWith(
          DecksDataResponse value, $Res Function(DecksDataResponse) then) =
      _$DecksDataResponseCopyWithImpl<$Res, DecksDataResponse>;
  @useResult
  $Res call({List<Deck> decks});
}

/// @nodoc
class _$DecksDataResponseCopyWithImpl<$Res, $Val extends DecksDataResponse>
    implements $DecksDataResponseCopyWith<$Res> {
  _$DecksDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
  }) {
    return _then(_value.copyWith(
      decks: null == decks
          ? _value.decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<Deck>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DecksDataResponseCopyWith<$Res>
    implements $DecksDataResponseCopyWith<$Res> {
  factory _$$_DecksDataResponseCopyWith(_$_DecksDataResponse value,
          $Res Function(_$_DecksDataResponse) then) =
      __$$_DecksDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Deck> decks});
}

/// @nodoc
class __$$_DecksDataResponseCopyWithImpl<$Res>
    extends _$DecksDataResponseCopyWithImpl<$Res, _$_DecksDataResponse>
    implements _$$_DecksDataResponseCopyWith<$Res> {
  __$$_DecksDataResponseCopyWithImpl(
      _$_DecksDataResponse _value, $Res Function(_$_DecksDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
  }) {
    return _then(_$_DecksDataResponse(
      decks: null == decks
          ? _value._decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<Deck>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DecksDataResponse
    with DiagnosticableTreeMixin
    implements _DecksDataResponse {
  const _$_DecksDataResponse({required final List<Deck> decks})
      : _decks = decks;

  factory _$_DecksDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DecksDataResponseFromJson(json);

  final List<Deck> _decks;
  @override
  List<Deck> get decks {
    if (_decks is EqualUnmodifiableListView) return _decks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DecksDataResponse(decks: $decks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DecksDataResponse'))
      ..add(DiagnosticsProperty('decks', decks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecksDataResponse &&
            const DeepCollectionEquality().equals(other._decks, _decks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_decks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecksDataResponseCopyWith<_$_DecksDataResponse> get copyWith =>
      __$$_DecksDataResponseCopyWithImpl<_$_DecksDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DecksDataResponseToJson(
      this,
    );
  }
}

abstract class _DecksDataResponse implements DecksDataResponse {
  const factory _DecksDataResponse({required final List<Deck> decks}) =
      _$_DecksDataResponse;

  factory _DecksDataResponse.fromJson(Map<String, dynamic> json) =
      _$_DecksDataResponse.fromJson;

  @override
  List<Deck> get decks;
  @override
  @JsonKey(ignore: true)
  _$$_DecksDataResponseCopyWith<_$_DecksDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
