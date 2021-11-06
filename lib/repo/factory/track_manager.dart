import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/managers/Result.dart';

enum  TrackSemanticEvent {
  notFound,
}

typedef TrackListResult = Result<List<Track>, TrackSemanticEvent>;
typedef TrackResult = Result<Track, TrackSemanticEvent>;

abstract class TrackManager {
  Future<TrackListResult> all(String matching);
  Future<TrackResult> fetch(int id);
}

