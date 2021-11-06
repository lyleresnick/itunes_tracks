import 'dart:convert';

import 'package:http/http.dart' as Http;

import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/api_client.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'Result.dart';

class NetworkTrackManager extends TrackManager {
  final ApiClient _apiClient;
  NetworkTrackManager(this._apiClient);

  List<Track> _currentTrackList = [];

  @override
  Future<TrackListResult> all(String matching) async {
    try {
      final decodedResponse = await _apiClient.search(matching);
      final resultCount = decodedResponse['resultCount'];
      if (resultCount == 0) {
        return SemanticErrorResult(reason: TrackSemanticEvent.notFound);
      }
      final results = decodedResponse['results'] as List<dynamic>;
      _currentTrackList = results
          .map((result) => result as Map<String, dynamic>)
          .map((track) => Track.fromJson(track))
          .where((track) => track != null)
          .map((track) => track as Track)
          .toList();
      return SuccessResult(data: _currentTrackList);
    } on ApiClientException catch (e) {
      return FailureResult(code: e.statusCode, description: e.description);
    }
  }

  @override
  Future<TrackResult> fetch(int id) async {
    try {
      final track =
          _currentTrackList.firstWhere((track) => track.trackId == id);
      return SuccessResult(data: track);
    } catch (e) {
      return SemanticErrorResult(reason: TrackSemanticEvent.notFound);
    }
  }
}
