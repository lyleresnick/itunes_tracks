import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter_output.dart';
import 'package:itunes_tracks/ui/track/presenter/track_view_model.dart';
import 'package:itunes_tracks/ui/track/use_case/track_presentation_model.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case_output.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';
import 'data/track_data.dart';

final testString = "abracadabra";

void main() {
  late TrackPresenter sut;
  late MockUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockUseCase();
    sut = TrackPresenter(mockUseCase);
  });

  test('sut correctly converts output of useCase', () async {
    mockUseCase.streamAddItems();
    executeStreamTest(
      stream: sut.stream,
      expectedValues: [
        TrackPresenterOutput.model(TrackViewModel.fromPresentation(
            TrackPresentationModel.fromEntity(track1))),
        TrackPresenterOutput.error(testString)
      ],
    );
  });

  tearDown(() {
    sut.dispose();
  });
}

class MockUseCase extends Mock
    with StarterBloc<TrackUseCaseOutput>
    implements TrackUseCase {
  void streamAddItems() {
    emit(
        TrackUseCaseOutput.model(TrackPresentationModel.fromEntity(track1)));
    emit(TrackUseCaseOutput.error(testString));
  }
}
