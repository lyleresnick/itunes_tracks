import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/ui/track/use_case/track_presentation_model.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case_output.dart';
import 'test_use_case_state.dart';
import 'test_utils.dart';
import 'data/track_data.dart';

void main() {
  late TrackUseCase sut;
  late Stream<TrackUseCaseOutput> stream;
  late TestAppState testAppState;

  _setUp() {
    sut = TrackUseCase(testAppState);
    stream = sut.stream;
  }

  test('default model sets releaseDate = null, longDescription = null, shortDescription = null', () async {
    final testArtistName = "testArtistName";
    final testTrackName = "trackName";
    final testKind = "kind";
    final testArtworkUrl100 = Uri(scheme: "testArtworkUrl100");
    final testTrackTimeMillis = 1234567;
    final testCurrency = "currency";
    final testTrackPrice = 3.99;

    expect(
        TrackPresentationModel(
            artistName: testArtistName,
            trackName: testTrackName,
            kind: testKind,
            artworkUrl100: testArtworkUrl100,
            trackTimeMillis: testTrackTimeMillis,
            currency: testCurrency,
            trackPrice: testTrackPrice),
        equals(TrackPresentationModel(
            releaseDate: null,
            artistName: testArtistName,
            trackName: testTrackName,
            kind: testKind,
            artworkUrl100: testArtworkUrl100,
            trackTimeMillis: testTrackTimeMillis,
            currency: testCurrency,
            trackPrice: testTrackPrice,
            longDescription: null,
            shortDescription: null)));
  });

  test('sut constructor emits error when selectedIndex == null', () async {
    testAppState = TestAppState();
    _setUp();
    executeStreamTest(stream: stream, expectedValues: [
      TrackUseCaseOutput.error("Programmer Error: selectedIndex is null"),
    ]);
  });

  test('sut constructor emits error when selectedIndex is out of range',
      () async {
    testAppState = TestAppState();
    testAppState.currentTrackList = [];
    testAppState.selectedIndex = 3;
    _setUp();
    executeStreamTest(stream: stream, expectedValues: [
      TrackUseCaseOutput.error(
          "Programmer Error: selectedIndex ${testAppState.selectedIndex} is out of range"),
    ]);
  });

  test('sut constructor emits model when selectedIndex is in range', () async {
    testAppState = TestAppState();
    testAppState.currentTrackList = [track1];
    testAppState.selectedIndex = 0;
    _setUp();
    executeStreamTest(stream: stream, expectedValues: [
      TrackUseCaseOutput.model(TrackPresentationModel.fromEntity(track1))
    ]);
  });
}
