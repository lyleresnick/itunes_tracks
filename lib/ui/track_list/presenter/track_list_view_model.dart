import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes_tracks/repo/entities/util.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_presentation_model.dart';
part 'track_list_view_model.freezed.dart';

@freezed
class TrackListViewModel with _$TrackListViewModel {
  factory TrackListViewModel({
    String? errorMessage,
    @Default(false) bool isWaiting,
    required List<TrackListRowViewModel> rows,
  }) = _TrackListViewModel;

  static TrackListViewModel fromPresentation(TrackListPresentationModel model) {
    final errorMessage =
        model.errorMessage ?? model.semanticReason?._toText(model.searchTerm);
    final isWaiting = model.isWaiting;
    final rows = model.rows
        .map((model) => TrackListRowViewModel.fromPresentation(model))
        .toList();

    return TrackListViewModel(
        rows: rows, isWaiting: isWaiting, errorMessage: errorMessage);
  }
}

@freezed
class TrackListRowViewModel with _$TrackListRowViewModel{
  factory TrackListRowViewModel({
    required String artistName,
    required String trackName,
    required Uri artworkUrl100,
    required String trackTime,
    required String trackPrice,
  }) = _TrackListRowViewModel;

  static TrackListRowViewModel fromPresentation(
      TrackListRowPresentationModel model) {
    return TrackListRowViewModel(
        artistName: model.artistName,
        trackName: model.trackName,
        trackPrice: "\$${model.trackPrice}",
        artworkUrl100: model.artworkUrl100,
        trackTime: model.trackTimeMillis.formatAsMillis());
  }
}

extension on TrackDomainIssue {
  String _toText(String searchTerm) {
    switch (this) {
      case TrackDomainIssue.notFound:
        return "No results found for '$searchTerm'";
    }
  }
}
