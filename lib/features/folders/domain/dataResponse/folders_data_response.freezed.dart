// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folders_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoldersDataResponse _$FoldersDataResponseFromJson(Map<String, dynamic> json) {
  return _FoldersDataResponse.fromJson(json);
}

/// @nodoc
mixin _$FoldersDataResponse {
  List<Folder> get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoldersDataResponseCopyWith<FoldersDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoldersDataResponseCopyWith<$Res> {
  factory $FoldersDataResponseCopyWith(
          FoldersDataResponse value, $Res Function(FoldersDataResponse) then) =
      _$FoldersDataResponseCopyWithImpl<$Res, FoldersDataResponse>;
  @useResult
  $Res call({List<Folder> folders});
}

/// @nodoc
class _$FoldersDataResponseCopyWithImpl<$Res, $Val extends FoldersDataResponse>
    implements $FoldersDataResponseCopyWith<$Res> {
  _$FoldersDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = null,
  }) {
    return _then(_value.copyWith(
      folders: null == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoldersDataResponseCopyWith<$Res>
    implements $FoldersDataResponseCopyWith<$Res> {
  factory _$$_FoldersDataResponseCopyWith(_$_FoldersDataResponse value,
          $Res Function(_$_FoldersDataResponse) then) =
      __$$_FoldersDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Folder> folders});
}

/// @nodoc
class __$$_FoldersDataResponseCopyWithImpl<$Res>
    extends _$FoldersDataResponseCopyWithImpl<$Res, _$_FoldersDataResponse>
    implements _$$_FoldersDataResponseCopyWith<$Res> {
  __$$_FoldersDataResponseCopyWithImpl(_$_FoldersDataResponse _value,
      $Res Function(_$_FoldersDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folders = null,
  }) {
    return _then(_$_FoldersDataResponse(
      folders: null == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<Folder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoldersDataResponse
    with DiagnosticableTreeMixin
    implements _FoldersDataResponse {
  const _$_FoldersDataResponse({required final List<Folder> folders})
      : _folders = folders;

  factory _$_FoldersDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FoldersDataResponseFromJson(json);

  final List<Folder> _folders;
  @override
  List<Folder> get folders {
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folders);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FoldersDataResponse(folders: $folders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FoldersDataResponse'))
      ..add(DiagnosticsProperty('folders', folders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoldersDataResponse &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoldersDataResponseCopyWith<_$_FoldersDataResponse> get copyWith =>
      __$$_FoldersDataResponseCopyWithImpl<_$_FoldersDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoldersDataResponseToJson(
      this,
    );
  }
}

abstract class _FoldersDataResponse implements FoldersDataResponse {
  const factory _FoldersDataResponse({required final List<Folder> folders}) =
      _$_FoldersDataResponse;

  factory _FoldersDataResponse.fromJson(Map<String, dynamic> json) =
      _$_FoldersDataResponse.fromJson;

  @override
  List<Folder> get folders;
  @override
  @JsonKey(ignore: true)
  _$$_FoldersDataResponseCopyWith<_$_FoldersDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
