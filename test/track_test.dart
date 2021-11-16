import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/repo/entities/track.dart';
import 'data/data.dart';
import 'data/track_data.dart';

void main() {
  setUp(() {});

  test('"fromJson" returns a Track from good track json', () async {
    final result = Track.fromJson(jsonDecode(goodTrack2Json));
    expect(
        result,
        equals(track2));
  });

  test('"fromJson" returns null when trackId is missing', () async {
    final result = Track.fromJson(jsonDecode(missingTrackIdJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when trackName is missing', () async {
    final result = Track.fromJson(jsonDecode(missingTrackNameJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when trackKind is missing', () async {
    final result = Track.fromJson(jsonDecode(missingTrackKindJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when artistName is missing', () async {
    final result = Track.fromJson(jsonDecode(missingArtistNameJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when currency is missing', () async {
    final result = Track.fromJson(jsonDecode(missingCurrencyJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when trackPrice is missing', () async {
    final result = Track.fromJson(jsonDecode(missingTrackPriceJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when trackTimeMillis is missing', () async {
    final result = Track.fromJson(jsonDecode(missingTrackTimeMillisJson));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when artworkUrl100 is missing', () async {
    final result = Track.fromJson(jsonDecode(missingArtworkUrl100Json));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when artworkUrl100 is invalid', () async {
    final result = Track.fromJson(jsonDecode(invalidArtworkUrl100Json));
    expect(result, equals(null));
  });

  test('"fromJson" returns null when releaseDate is invalid', () async {
    final result = Track.fromJson(jsonDecode(invalidReleaseDateJson));
    expect(result, equals(null));
  });


  tearDown(() {});
}
