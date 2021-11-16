import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_presenter.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_presenter_output.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_view_model.dart';
import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_presentation_model.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case_output.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';
import 'data/track_data.dart';

final testString = "abracadabra";

void main() {
  late TrackListPresenter sut;
  late MockUseCase mockUseCase;
  late MockRouter mockRouter;

  setUp(() {
    mockUseCase = MockUseCase();
    mockRouter = MockRouter();
    sut = TrackListPresenter(mockUseCase, mockRouter);
  });

  test('sut.eventSearch calls useCase.eventSearch and passes searchTerm',
      () async {
    when(() => mockUseCase.eventSearch(testString))
        .thenAnswer((_) async => Future.value(null));
    sut.eventSearch(testString);
    final captured = verify(() => sut.eventSearch(captureAny())).captured;
    expect(captured.last, equals(testString));
  });

  test('sut.eventTrackTapped calls useCase.eventTrackTapped and passes index',
      () async {
    final testIndex = 6;
    when(() => mockUseCase.eventTrackTapped(testIndex)).thenReturn(null);
    sut.eventTrackTapped(testIndex);
    final captured = verify(() => sut.eventTrackTapped(captureAny())).captured;
    expect(captured.last, equals(testIndex));
  });

  test('sut correctly converts output of useCase', () async {
    verifyNever(() => mockRouter.routerRequestTrack());
    mockUseCase.streamAddItems();
    executeStreamTest(
        stream: sut.stream,
        expectedValues: [
          TrackListPresenterOutput.initialize(),
          TrackListPresenterOutput.model(TrackListViewModel(
            rows: [
              TrackListRowViewModel.fromPresentation(
                  TrackListRowPresentationModel.fromEntity(track1))
            ],
          )),
          TrackListPresenterOutput.error(10, testString)
        ],
        onDone: () {
          verify(() => mockRouter.routerRequestTrack()).called(1);
        });
  });

  tearDown(() {
    sut.dispose();
  });
}

class MockRouter extends Mock implements TrackListRouter {}

class MockUseCase extends Mock
    with StarterBloc<TrackListUseCaseOutput>
    implements TrackListUseCase {
  void streamAddItems() {
    emit(TrackListUseCaseOutput.initialize());
    emit(TrackListUseCaseOutput.model(TrackListPresentationModel(
        rows: [TrackListRowPresentationModel.fromEntity(track1)],
        searchTerm: testString)));
    emit(TrackListUseCaseOutput.error(10, testString));
    emit(TrackListUseCaseOutput.track());
  }
}
