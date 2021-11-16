import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'package:itunes_tracks/ui/track/router/track_router.dart';
import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';

import 'main_router_presenter_output.dart';

class MainRouterPresenter
    with StarterBloc<MainRouterPresenterOutput>
    implements TrackListRouter, TrackRouter {

  MainRouterPresenter();

  // TrackListRouter

  @override
  void routerRequestTrack() {
    emit(MainRouterPresenterOutput.track());
  }

}
