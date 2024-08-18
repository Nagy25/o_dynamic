import 'package:dio/dio.dart';
import 'package:o_dynamic/core/network/i_remote_client.dart';

class RemoteClient implements IRemoteClient {
  final Dio _dio;

  RemoteClient() : _dio = Dio();
  @override
  Future<dynamic> get(String url) {
    return _dio.get(url);
  }
}
