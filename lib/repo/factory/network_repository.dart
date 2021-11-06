import 'package:itunes_tracks/repo/managers/network_api_client.dart';
import 'package:itunes_tracks/repo/managers/network_track_manager.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'package:itunes_tracks/repo/factory/repository.dart';


class NetworkRepository extends Repository {
  TrackManager _trackManager;

  NetworkRepository()
   :
      _trackManager = NetworkTrackManager(NetworkApiClient())
   ;

  @override get trackManager => _trackManager;
}
