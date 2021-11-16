import 'package:itunes_tracks/ui/app_state/app_state.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_presentation_model.dart';
import 'track_use_case_output.dart';

class TrackUseCase with StarterBloc<TrackUseCaseOutput> {
  final AppState _appState;

  TrackUseCase(this._appState) {
    final selectedIndex = _appState.selectedIndex;
    if (selectedIndex == null) {
      emit(
          TrackUseCaseOutput.error("Programmer Error: selectedIndex is null"));
    } else if (selectedIndex >= _appState.currentTrackList.length) {
      emit(TrackUseCaseOutput.error(
          "Programmer Error: selectedIndex $selectedIndex is out of range"));
    } else {
      final track = _appState.currentTrackList[selectedIndex];
      emit(
          TrackUseCaseOutput.model(TrackPresentationModel.fromEntity(track)));
    }
  }
}
