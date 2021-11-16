import 'package:freezed_annotation/freezed_annotation.dart';
import 'track_list_presentation_model.dart';
part 'track_list_use_case_output.freezed.dart';

@freezed
class TrackListUseCaseOutput with _$TrackListUseCaseOutput {
  const factory TrackListUseCaseOutput.initialize() = _Initialize;
  const factory TrackListUseCaseOutput.model(TrackListPresentationModel model) =
  _Model;
  const factory TrackListUseCaseOutput.track() = _Track;
  const factory TrackListUseCaseOutput.error(int code, String description) =
  _Error;
}
