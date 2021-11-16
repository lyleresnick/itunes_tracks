import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:itunes_tracks/repo/factory/api_client.dart';
import 'package:itunes_tracks/repo/managers/network_api_client.dart';
import 'package:mocktail/mocktail.dart';

import 'data/data.dart';

void main() {
  final testValue = "hello";
  final Future<Response> Function(Uri url, {Map<String, String>? headers})
      mockHttpGet = MockHttpGet();
  NetworkApiClient sut = NetworkApiClient(mockHttpGet);

  setUp(() {
    when(() => mockHttpGet(sut.searchUri(testValue)))
        .thenAnswer((_) async => Response(shortData, 200));
  });

  test('sut returns a Map when http.get returns a 200', () async {
    final result = await sut.search(testValue);
    expect(result, isA<Map<String, dynamic>>());
  });

  test('sut correctly processes the result when http.get returns a 200',
      () async {
    final result = await sut.search(testValue);
    expect(result, equals(Map<String, dynamic>.from(jsonDecode(shortData))));
  });

  test('sut throws an ApiClientException when http.get returns a 400',
      () async {
    final failValue = "notFound";
    expect(() async {
      when(() => mockHttpGet(sut.searchUri(failValue)))
          .thenAnswer((_) async => Response("", 400));
      await sut.search(failValue);
    }, throwsA(isA<ApiClientException>()));
  });

  tearDown(() {});
}

class MockHttpGet extends Mock {
  Future<Response> call(Uri url, {Map<String, String>? headers});
}
