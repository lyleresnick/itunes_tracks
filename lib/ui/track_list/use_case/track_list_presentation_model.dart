import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
part "track_list_presentation_model.freezed.dart";

@freezed
class TrackListPresentationModel with _$TrackListPresentationModel {
  factory TrackListPresentationModel(
      {String? errorMessage,
      TrackDomainIssue? semanticReason,
      @Default(false) bool isWaiting,
      required List<TrackListRowPresentationModel> rows,
      required String searchTerm}) = _TrackListPresentationModel;
}

@freezed
class TrackListRowPresentationModel with _$TrackListRowPresentationModel {
  factory TrackListRowPresentationModel(
      {required int trackId,
      required String artistName,
      required String trackName,
      required Uri artworkUrl100,
      required int trackTimeMillis,
      required double trackPrice}) = _TrackListRowPresentationModel;

  static TrackListRowPresentationModel fromEntity(Track entity) {
    return TrackListRowPresentationModel(
        trackId: entity.trackId,
        artistName: entity.artistName,
        artworkUrl100: entity.artworkUrl100,
        trackTimeMillis: entity.trackTimeMillis,
        trackPrice: entity.trackPrice,
        trackName: entity.trackName);
  }
}
