import 'package:itunes_tracks/repo/entities/util.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_presentation_model.dart';

class TrackListViewModel {
  final String? errorMessage;
  final bool isWaiting;
  final List<TrackListRowViewModel> rows;

  TrackListViewModel.fromPresentation(TrackListPresentationModel model)
      : errorMessage = model.errorMessage ??
            model.semanticReason?._toText(model.searchTerm),
        isWaiting = model.isWaiting,
        rows = model.rows
            .map((model) => TrackListRowViewModel.fromPresentation(model))
            .toList();
}

class TrackListRowViewModel {
  final String artistName;
  final String trackName;
  final Uri artworkUrl100;
  final String trackTime;
  final String trackPrice;

  TrackListRowViewModel.fromPresentation(TrackListRowPresentationModel model)
      : artistName = model.artistName,
        trackName = model.trackName,
        artworkUrl100 = model.artworkUrl100,
        trackTime = model.trackTimeMillis.formatAsMillis(),
        trackPrice = "\$${model.trackPrice}";
}

extension on TrackSemanticEvent {
  String _toText(String searchTerm) {
    switch (this) {
      case TrackSemanticEvent.notFound:
        return "No results found for '$searchTerm'";
    }
  }
}
