import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes_tracks/repo/entities/util.dart';
import 'package:itunes_tracks/ui/track/use_case/track_presentation_model.dart';
part "track_view_model.freezed.dart";

@freezed
class TrackViewModel with _$TrackViewModel {
  factory TrackViewModel({
    String? errorMessage,
    @Default(false) bool isWaiting,
    required String artistName,
    required String trackName,
    required String kind,
    required Uri artworkUrl100,
    required String trackTime,
    required String releaseDate,
    required String currency,
    required String trackPrice,
    String? shortDescription,
    String? longDescription
  }) = _TrackViewModel;

  static TrackViewModel fromPresentation(TrackPresentationModel model,
      {String? errorMessage, bool isWaiting = false}) {
    return TrackViewModel(
        errorMessage: errorMessage,
        isWaiting: isWaiting,
        artistName: model.artistName,
        trackName: model.trackName,
        kind: model.kind,
        artworkUrl100: model.artworkUrl100,
        trackTime: model.trackTimeMillis.formatAsMillis(),
        releaseDate: model.releaseDate != null
            ? outboundTimeFormatter.format(model.releaseDate!)
            : "",
        currency: model.currency,
        trackPrice: "\$${model.trackPrice}",
        shortDescription: model.shortDescription,
        longDescription: model.longDescription);
  }
}
