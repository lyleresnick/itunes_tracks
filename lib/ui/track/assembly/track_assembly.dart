import 'package:itunes_tracks/ui/app_state/itunes_track_app_state.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter.dart';
import 'package:itunes_tracks/ui/track/router/track_router.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track/view/track_scene.dart';

class TrackAssembly {

    final TrackScene scene;

    TrackAssembly._({required this.scene});

    factory TrackAssembly(TrackRouter router) {

        final useCase = TrackUseCase(ITunesTracksAppState.instance);
        final presenter = TrackPresenter(useCase);
        final scene = TrackScene(presenter);

        return TrackAssembly._(scene: scene);
    }
}