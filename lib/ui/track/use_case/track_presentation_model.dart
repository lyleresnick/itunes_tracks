import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes_tracks/repo/entities/track.dart';
part "track_presentation_model.freezed.dart";

@freezed
class TrackPresentationModel with _$TrackPresentationModel {
  factory TrackPresentationModel({
    required String artistName,
    required String trackName,
    required String kind,
    required Uri artworkUrl100,
    required int trackTimeMillis,
    DateTime? releaseDate,
    required String currency,
    required double trackPrice,
    String? shortDescription,
    String? longDescription,
  }) = _TrackPresentationModel;

  static TrackPresentationModel fromEntity(Track entity) {
    return TrackPresentationModel(
        artistName: entity.artistName,
        trackName: entity.trackName,
        kind: entity.kind,
        artworkUrl100: entity.artworkUrl100,
        trackTimeMillis: entity.trackTimeMillis,
        releaseDate: entity.releaseDate,
        currency: entity.currency,
        trackPrice: entity.trackPrice,
        shortDescription: entity.shortDescription,
        longDescription: entity.longDescription);
  }
}
