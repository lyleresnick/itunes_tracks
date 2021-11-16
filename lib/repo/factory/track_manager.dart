import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/managers/result.dart';

enum  TrackDomainIssue {
  notFound,
}

typedef TrackListResult = Result<List<Track>, TrackDomainIssue>;
typedef TrackResult = Result<Track, TrackDomainIssue>;

abstract class TrackManager {
  Future<TrackListResult> all(String matching);
}

