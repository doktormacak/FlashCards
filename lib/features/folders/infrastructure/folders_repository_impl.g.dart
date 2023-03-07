// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders_repository_impl.dart';

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

String _$FoldersRepositoryImplHash() =>
    r'2e78b757ae456e7ee483cf6d9f8c3ae18158b71e';

/// See also [FoldersRepositoryImpl].
final foldersRepositoryImplProvider =
    AutoDisposeNotifierProvider<FoldersRepositoryImpl, dynamic>(
  FoldersRepositoryImpl.new,
  name: r'foldersRepositoryImplProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$FoldersRepositoryImplHash,
);
typedef FoldersRepositoryImplRef = AutoDisposeNotifierProviderRef<dynamic>;

abstract class _$FoldersRepositoryImpl extends AutoDisposeNotifier<dynamic> {
  @override
  dynamic build();
}
