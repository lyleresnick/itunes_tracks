import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/ui/app_state/itunes_track_app_state.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_presenter.dart';
import 'package:itunes_tracks/ui/track_list/router/track_list_router.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'package:itunes_tracks/ui/track_list/view/track_list_scene.dart';

class TrackListAssembly {

    final TrackListScene scene;

    TrackListAssembly._({required this.scene});

    factory TrackListAssembly(TrackListRouter router) {

        final useCase = TrackListUseCase(Repository.repository, ITunesTracksAppState.instance);
        final presenter = TrackListPresenter(useCase, router);
        final scene = TrackListScene(presenter);

        return TrackListAssembly._(scene: scene);
    }
}