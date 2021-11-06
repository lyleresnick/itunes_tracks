import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';

class TrackListPresentationModel {
  final String? errorMessage;
  final TrackSemanticEvent? semanticReason;
  final bool isWaiting;
  final List<TrackListRowPresentationModel> rows;
  final String searchTerm;

  TrackListPresentationModel(
      {required this.rows,
      required this.searchTerm,
      this.errorMessage,
      this.isWaiting = false,
      this.semanticReason});
}

class TrackListRowPresentationModel {
  final int trackId;
  final String artistName;
  final String trackName;
  final Uri artworkUrl100;
  final int trackTimeMillis;
  final double trackPrice;

  TrackListRowPresentationModel.fromEntity(Track entity)
      : trackId = entity.trackId,
        artistName = entity.artistName,
        trackName = entity.trackName,
        artworkUrl100 = entity.artworkUrl100,
        trackTimeMillis = entity.trackTimeMillis,
        trackPrice = entity.trackPrice;
}
