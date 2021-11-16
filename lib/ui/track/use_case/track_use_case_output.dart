import 'package:freezed_annotation/freezed_annotation.dart';
import 'track_presentation_model.dart';
part 'track_use_case_output.freezed.dart';

@freezed
class TrackUseCaseOutput with _$TrackUseCaseOutput {
  const factory TrackUseCaseOutput.model(TrackPresentationModel model) = _Model;
  const factory TrackUseCaseOutput.error(String description) = _Error;
}
