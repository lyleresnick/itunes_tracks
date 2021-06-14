import 'package:itunes_tracks/repo/entities/util.dart';
import 'package:itunes_tracks/ui/track/use_case/track_presentation_model.dart';

class TrackViewModel {
  final String? errorMessage;
  final bool isWaiting;
  final String artistName;
  final String trackName;
  final String kind;
  final Uri artworkUrl100;
  final String trackTime;
  final String releaseDate;
  final String currency;
  final String trackPrice;

  TrackViewModel.fromPresentation(TrackPresentationModel model,
      {this.errorMessage, this.isWaiting = false})
      : artistName = model.artistName,
        trackName = model.trackName,
        kind = model.kind,
        artworkUrl100 = model.artworkUrl100,
        trackTime = model.trackTimeMillis.formatAsMillis(),
        releaseDate = model.releaseDate != null
            ? outboundTimeFormatter.format(model.releaseDate!)
            : "",
        currency = model.currency,
        trackPrice = "\$${model.trackPrice}";
}
