import 'package:freezed_annotation/freezed_annotation.dart';
import 'track_list_view_model.dart';
part 'track_list_presenter_output.freezed.dart';

@freezed
class TrackListPresenterOutput with _$TrackListPresenterOutput {
  const factory TrackListPresenterOutput.initialize() = _Initialize;
  const factory TrackListPresenterOutput.model(TrackListViewModel model) =
  _Model;
  const factory TrackListPresenterOutput.error(int code, String description) =
  _Error;
}
