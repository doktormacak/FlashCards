import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

@riverpod
Future<SecureLocalStorage> secureLocalStorage(SecureLocalStorageRef ref) async {
  return SecureLocalStorage();
}

class SecureLocalStorage {
  final storage = FlutterSecureStorage();

  Future<void> setTokenInStorage({required String key, required value}) async {
    await storage.write(key: key, value: value);
  }

  Future<void> deleteTokenInStorage({required String key}) async {
    await storage.delete(key: key);
  }

  Future<Map<String, Object?>> getTokensFromStorage() async {
    final token = await storage.readAll();
    return token;
  }
}
