import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_list_presenter_output.dart';
import 'track_list_view_model.dart';

class TrackListPresenter with StarterBloc<TrackListPresenterOutput> {
  final TrackListUseCase _useCase;
  final TrackListRouter _router;

  TrackListPresenter(this._useCase, this._router) {
    _useCase.stream.listen((event) {
      final result = event.whenOrNull(
          initialize: () => TrackListPresenterOutput.initialize(),
          error: (code, description) => TrackListPresenterOutput.error(code, description),
          model: (model) =>
              TrackListPresenterOutput.model(TrackListViewModel.fromPresentation(model)),
          track: () {
            _router.routerRequestTrack();
          });
      if (result != null) emit(result);
    });
  }

  void eventSearch(String searchTerm) {
    _useCase.eventSearch(searchTerm);
  }

  void eventTrackTapped(int index) {
    _useCase.eventTrackTapped(index);
  }

  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
