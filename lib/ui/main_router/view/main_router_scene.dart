import 'package:flutter/material.dart';
import 'package:itunes_tracks/ui/main_router/presenter/main_router_presenter.dart';
import 'package:itunes_tracks/ui/common/bloc_provider.dart';
import 'package:itunes_tracks/ui/track/assembly/track_assembly.dart';
import 'package:itunes_tracks/ui/track_list/assembly/track_list_assembly.dart';

class MainRouterScene extends StatelessWidget {
  final MainRouterPresenter _presenter;
  final navKey = GlobalKey<NavigatorState>();

  MainRouterScene(this._presenter) {
    _presenter.stream.listen((event) {
      event.when(track: () {
        navKey.currentState!.pushNamed(_routeNameTrack);
      });
    });
  }

  static const _routeNameRoot = "/";
  static const _routeNameTrack = "track";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainRouterPresenter>(
        bloc: _presenter,
        child: Navigator(
          key: navKey,
          initialRoute: _routeNameRoot,
          onGenerateRoute: (RouteSettings settings) {
            late WidgetBuilder builder;
            switch (settings.name) {
              case _routeNameRoot:
                builder = (BuildContext context) {
                  return TrackListAssembly(_presenter).scene;
                };
                break;
              case _routeNameTrack:
                builder = (BuildContext context) {
                  return TrackAssembly(_presenter).scene;
                };
                break;
              default:
                assert(false, 'Invalid route: ${settings.name}');
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          },
        ));
  }
}
