import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/api_client.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'result.dart';

class NetworkTrackManager extends TrackManager {
  final ApiClient _apiClient;
  NetworkTrackManager(this._apiClient);

  @override
  Future<TrackListResult> all(String matching) async {
    try {
      final decodedResponse = await _apiClient.search(matching);
      final resultCount = decodedResponse['resultCount'];
      if (resultCount == 0) {
        return Result.domainIssue(TrackDomainIssue.notFound);
      }
      final results = decodedResponse['results'] as List<dynamic>;
      final trackList = results
          .map((result) => result as Map<String, dynamic>)
          .map((track) => Track.fromJson(track))
          .where((track) => track != null)
          .map((track) => track as Track)
          .toList();
      return Result.success(trackList);
    } on ApiClientException catch (e) {
      return Result.failure(e.statusCode, e.description);
    }
  }
}
