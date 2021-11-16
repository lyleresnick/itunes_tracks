import 'package:itunes_tracks/ui/main_router/presenter/main_router_presenter.dart';
import 'package:itunes_tracks/ui/main_router/view/main_router_scene.dart';

class MainRouterAssembly {
  final MainRouterScene scene;
  MainRouterAssembly._({required this.scene});

  factory MainRouterAssembly() {
    final presenter = MainRouterPresenter();
    final scene = MainRouterScene(presenter);

    return MainRouterAssembly._(scene: scene);
  }
}
