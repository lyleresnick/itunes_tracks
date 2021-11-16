import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_presenter_output.dart';
import 'track_view_model.dart';

class TrackPresenter with StarterBloc<TrackPresenterOutput> {
  final TrackUseCase _useCase;

  TrackPresenter(this._useCase) {
    _useCase.stream.listen((event) {
      emit(event.when(
          error: (description) => TrackPresenterOutput.error(description),
          model: (model) => TrackPresenterOutput.model(
              TrackViewModel.fromPresentation(model))
          ));
    });
  }

  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
