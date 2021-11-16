import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'package:itunes_tracks/repo/managers/result.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_presentation_model.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case_output.dart';
import 'package:mocktail/mocktail.dart';
import 'test_use_case_state.dart';
import 'test_utils.dart';
import 'data/track_data.dart';

void main() {
  late TrackListUseCase sut;
  late Stream<TrackListUseCaseOutput> stream;

  late FakeRepo mockRepository;
  late TestAppState testAppState;
  final testString = "testString";

  setUp(() {
    mockRepository = FakeRepo();
    testAppState = TestAppState();
    sut = TrackListUseCase(mockRepository, testAppState);
    stream = sut.stream;
  });

  test('default model sets isWaiting = false, errorMessage = null, semanticReason = null',
      () async {
    expect(
        TrackListPresentationModel(searchTerm: testString, rows: []),
        equals(TrackListPresentationModel(
            isWaiting: false,
            semanticReason: null,
            errorMessage: null,
            rows: [],
            searchTerm: testString)));
  });

  test('sut constructor emits initialize', () async {
    executeStreamTest(stream: stream, expectedValues: [
      TrackListUseCaseOutput.initialize(),
    ]);
  });

  test(
      'sut.eventSearch emits model event with isWaiting = true, then model with expected payload and sets appState',
      () async {
    when(() => mockRepository.trackManager.all(testString)).thenAnswer(
        (_) async => Future.value(Result.success([track1, track2, track3])));
    verifyNever(() => mockRepository.trackManager.all(testString));

    executeStreamTest(
        stream: stream.skip(1),
        expectedValues: [
          TrackListUseCaseOutput.model(TrackListPresentationModel(
              searchTerm: testString, rows: [], isWaiting: true)),
          TrackListUseCaseOutput.model(TrackListPresentationModel(
            searchTerm: testString,
            rows: [
              TrackListRowPresentationModel.fromEntity(track1),
              TrackListRowPresentationModel.fromEntity(track2),
              TrackListRowPresentationModel.fromEntity(track3),
            ],
          ))
        ],
        onDone: () {
          expect(
              testAppState.currentTrackList, equals([track1, track2, track3]));
        });
    await sut.eventSearch(testString);
  });

  test('sut.eventTrackTapped emits track event and sets appState', () async {
    when(() => mockRepository.trackManager.all(testString)).thenAnswer(
        (_) async => Future.value(Result.success([track1, track2, track3])));
    verifyNever(() => mockRepository.trackManager.all(testString));
    executeStreamTest(
        stream: stream.skip(3),
        expectedValues: [TrackListUseCaseOutput.track()],
        onDone: () {
          expect(testAppState.selectedIndex, equals(2));
        });

    await sut.eventSearch(testString);
    sut.eventTrackTapped(2);
  });
}

class FakeRepo extends Mock implements Repository {
  final trackManager = FakeTrackManager();
}

class FakeTrackManager extends Mock implements TrackManager {}
