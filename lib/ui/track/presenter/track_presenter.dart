import 'package:itunes_tracks/ui/track/router/track_router.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case_output.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_presenter_output.dart';
import 'track_view_model.dart';

class TrackPresenter with StarterBloc<TrackPresenterOutput> {
  final TrackUseCase _useCase;
  final TrackRouter _router;

  TrackPresenter(this._useCase, this._router) {
    _useCase.stream.listen((event) {
      if (event is PresentNotFound) {
        streamAdd(ShowNotFound());
      } else if (event is PresentModel) {
        streamAdd(ShowModel(TrackViewModel.fromPresentation(event.model)));
      } else {
        assert(false, "unknown event $event");
        return null;
      }
    });
  }

  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
