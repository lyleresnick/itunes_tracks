import 'package:itunes_tracks/repo/managers/network_track_manager.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
import 'package:itunes_tracks/repo/factory/repository.dart';


class NetworkRepository extends Repository {
  TrackManager _trackManager;

  NetworkRepository()
   :
      _trackManager = NetworkTrackManager()
   ;

  @override get trackManager => _trackManager;
}
