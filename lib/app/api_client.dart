import 'package:dio/dio.dart';
import 'package:flash_cards/features/auth/domain/login_credentials.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  Future<Response> get(String path) async {
    return await dio.get(path);
  }

  dynamic post(String path, LoginCredentials data) async {
    return await dio.post(path, data: data);
  }

  dynamic put(String path) async {
    return await dio.put(path);
  }

  dynamic delete(String path) async {
    return await dio.delete(path);
  }
}
