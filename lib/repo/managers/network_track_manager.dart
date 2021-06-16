import 'dart:convert';

import 'package:http/http.dart' as Http;

import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
import 'Result.dart';

class NetworkTrackManager extends TrackManager {
  NetworkTrackManager();

  List<Track> _currentTrackList = [];

  static final _baseURLString = "http://itunes.apple.com";

  @override
  Future<TrackListResult> all(String matching) async {
    final queryTerm = "?term=$matching";
    final response = await Http.get(Uri.parse(_baseURLString + "/search" + queryTerm));

    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      final resultCount = decodedResponse['resultCount'];
      if (resultCount == 0) {
        return SemanticErrorResult(reason: TrackSemanticEvent.notFound);
      }
      final results = decodedResponse['results'] as List<dynamic>;
      _currentTrackList = results
          .map((result) => result as Map<String,dynamic>)
          .map((track) => Track.fromJson(track))
          .where((track) => track != null)
          .map((track) => track as Track)
          .toList();
      return SuccessResult(data: _currentTrackList);
    } else {
      return FailureResult(
          code: response.statusCode,
          description: response.reasonPhrase ?? 'Failed to load Tracks');
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
