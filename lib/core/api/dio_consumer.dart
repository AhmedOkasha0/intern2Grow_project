import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intern2grow/core/api/api_consumer.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client});

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body}) async {
    final response = await client.post(path,
        queryParameters: queryParameters, data: body);
    return jsonDecode(response.data);
  }
}
