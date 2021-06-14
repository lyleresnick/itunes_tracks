import 'package:itunes_tracks/ui/main_router/use_case/main_router_use_case.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'package:itunes_tracks/ui/track/router/track_router.dart';
import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';

import 'main_router_presenter_output.dart';

class MainRouterPresenter
    with StarterBloc<MainRouterPresenterOutput>
    implements TrackListRouter, TrackRouter {

  final MainRouterUseCase _useCase;
  MainRouterPresenter(this._useCase);

  // TrackListRouter

  @override
  void routerRequestTrack(int id) {
    streamAdd(ShowTrack(id));
  }

  @override
  void dispose() {
    _useCase.dispose();
    super.dispose();
  }

}
