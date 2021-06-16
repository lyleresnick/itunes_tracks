import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_presentation_model.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case_output.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_list_presenter_output.dart';
import 'track_list_view_model.dart';

class TrackListPresenter with StarterBloc<TrackListPresenterOutput> {
  final TrackListUseCase _useCase;
  final TrackListRouter _router;

  TrackListPresenter(this._useCase, this._router) {
    _useCase.stream.listen((event) {
      if (event is PresentInitialize) {
        streamAdd(ShowInitialize());
      }
      else if (event is PresentError) {
          streamAdd(ShowError(event.code, event.description));
      } else if (event is PresentModel) {
        streamAdd(ShowModel(
            TrackListViewModel.fromPresentation(event.model)));
      } else if (event is PresentTrack) {
        _router.routerRequestTrack();
      } else {
        assert(false, "unknown event $event");
        return null;
      }
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
