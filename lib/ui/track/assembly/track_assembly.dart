import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter.dart';
import 'package:itunes_tracks/ui/track/router/track_router.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track/view/track_scene.dart';

class TrackAssembly {

    final TrackScene scene;

    TrackAssembly._({required this.scene});

    factory TrackAssembly(int id, TrackRouter router) {

        final useCase = TrackUseCase(id, Repository.repository);
        final presenter = TrackPresenter(useCase, router);
        final scene = TrackScene(presenter);

        return TrackAssembly._(scene: scene);
    }
}