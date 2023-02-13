import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  Future<Response> get(String path) async {
    return await dio.get(path);
  }

  dynamic post(String path) async {
    return await dio.post(path);
  }

  dynamic put(String path) async {
    return await dio.put(path);
  }

  dynamic delete(String path) async {
    return await dio.delete(path);
  }
}
