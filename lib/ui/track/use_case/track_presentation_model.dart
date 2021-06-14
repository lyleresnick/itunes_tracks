
import 'package:itunes_tracks/repo/entities/track.dart';

class TrackPresentationModel {
  final String? errorMessage;
  final bool isWaiting;


  final int trackId;
  final String artistName;
  final String trackName;
  final String kind;
  final Uri artworkUrl100;
  final int trackTimeMillis;
  final DateTime? releaseDate;
  final String currency;
  final double trackPrice;

  TrackPresentationModel.fromEntity(Track entity, {this.errorMessage, this.isWaiting = false})
          : trackId = entity.trackId,
            artistName = entity.artistName,
            trackName = entity.trackName,
            kind = entity.kind,
            artworkUrl100 = entity.artworkUrl100,
            trackTimeMillis = entity.trackTimeMillis,
            releaseDate = entity.releaseDate,
            currency = entity.currency,
            trackPrice = entity.trackPrice;
}
