import 'package:freezed_annotation/freezed_annotation.dart';
import 'track_view_model.dart';
part 'track_presenter_output.freezed.dart';

@freezed
class TrackPresenterOutput with _$TrackPresenterOutput {
  const factory TrackPresenterOutput.model(TrackViewModel model) = _Model;
  const factory TrackPresenterOutput.error(String description) = _Error;
}

