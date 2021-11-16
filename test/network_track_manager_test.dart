import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/api_client.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'package:itunes_tracks/repo/managers/result.dart';
import 'package:itunes_tracks/repo/managers/network_track_manager.dart';
import 'package:mocktail/mocktail.dart';

import 'data/data.dart';
import 'data/track_data.dart';

void main() {
  late NetworkTrackManager sut;
  late MockApiClient mockApiClient;

  setUp(() {
    mockApiClient = MockApiClient();
    sut = NetworkTrackManager(mockApiClient);
  });

  test('sut.all removes rejected Tracks of apiClient.search(matching)',
      () async {
    final testValue = "hello";
    when(() => mockApiClient.search(testValue)).thenAnswer(
        (_) async => Map<String, dynamic>.from(jsonDecode(mostlyMissingData)));
    verifyNever(() => mockApiClient.search(testValue));
    final result = await sut.all(testValue);
    expect(result,
        equals(Result<List<Track>, TrackDomainIssue>.success([track2])));
  });

  test('sut.all correctly processes the result of apiClient.search(matching)',
      () async {
    final testValue = "hello";
    when(() => mockApiClient.search(testValue)).thenAnswer(
        (_) async => Map<String, dynamic>.from(jsonDecode(shortData)));
    verifyNever(() => mockApiClient.search(testValue));
    final result = await sut.all(testValue);
    expect(
        result,
        equals(Result<List<Track>, TrackDomainIssue>.success(
            [track1, track2, track3])));
  });

  test('sut.all returns failure when apiClient.search(matching) fails',
      () async {
    final testValue = "hello";
    final description = 'Failed to load Tracks';
    when(() => mockApiClient.search(testValue)).thenAnswer((_) async =>
        throw ApiClientException(statusCode: 400, description: description));
    verifyNever(() => mockApiClient.search(testValue));
    final result = await sut.all(testValue);
    expect(
        result,
        equals(
            Result<List<Track>, TrackDomainIssue>.failure(400, description)));
  });

  // given all of the other tests, the following test is not really necessary,
  // since it will break when the other tests break and it ends up being a nuisance
  test(
      'sut.all correctly generally processes the result of apiClient.search(matching)',
      () async {
    final testValue = "hello";
    when(() => mockApiClient.search(testValue)).thenAnswer(
        (_) async => Map<String, dynamic>.from(jsonDecode(veryLongData)));
    verifyNever(() => mockApiClient.search(testValue));
    final result = await sut.all(testValue);
    final count = result.maybeWhen(
        success: (trackList) => trackList.length, orElse: () => 0);
    expect(count, equals(47));
  });

  tearDown(() {});
}

class MockApiClient extends Mock implements ApiClient {}
