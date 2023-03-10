// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthToken _$$_AuthTokenFromJson(Map<String, dynamic> json) => _$_AuthToken(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$_AuthTokenToJson(_$_AuthToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$AuthTokenNotifierHash() => r'ca124db0962144fc4b2da917c00deae569eab64c';

/// See also [AuthTokenNotifier].
final authTokenNotifierProvider =
    AutoDisposeNotifierProvider<AuthTokenNotifier, dynamic>(
  AuthTokenNotifier.new,
  name: r'authTokenNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$AuthTokenNotifierHash,
);
typedef AuthTokenNotifierRef = AutoDisposeNotifierProviderRef<dynamic>;

abstract class _$AuthTokenNotifier extends AutoDisposeNotifier<dynamic> {
  @override
  dynamic build();
}
