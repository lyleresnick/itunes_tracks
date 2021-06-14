import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/managers/Result.dart';

enum  TrackSemanticEvent {
  notFound,
}

abstract class TrackManager {
  Future<Result<List<Track>,TrackSemanticEvent>> all(String matching);
  Future<Result<Track,TrackSemanticEvent>> fetch(int id);
}

