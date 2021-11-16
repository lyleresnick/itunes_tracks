import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:itunes_tracks/repo/factory/api_client.dart';
import 'package:itunes_tracks/repo/managers/network_api_client.dart';

import 'data/data.dart';

void main() {
  final testValue = "hello";
  NetworkApiClient sut200 = NetworkApiClient(mockHttpGet200);
  NetworkApiClient sut400 = NetworkApiClient(mockHttpGet400);

  setUp(() {});

  test('sut returns a Map when http.get returns a 200', () async {
    final result = await sut200.search(testValue);
    expect(result, isA<Map<String, dynamic>>());
  });

  test('sut correctly processes the result when http.get returns a 200',
      () async {
    final result = await sut200.search(testValue);
    expect(result, equals(Map<String, dynamic>.from(jsonDecode(shortData))));
  });

  test('sut throws an ApiClientException when http.get returns a 400',
      () async {
    expect(() async {
      await sut400.search(testValue);
    }, throwsA(isA<ApiClientException>()));
  });

  tearDown(() {});
}

Future<Response> mockHttpGet200(Uri url, {Map<String, String>? headers}) async {
  return Response(shortData, 200);
}

Future<Response> mockHttpGet400(Uri url, {Map<String, String>? headers}) async {
  return Response("", 400);
}
