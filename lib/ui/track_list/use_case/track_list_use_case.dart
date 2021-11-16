import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/repo/factory/track_manager.dart';
import 'package:itunes_tracks/ui/app_state/app_state.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_list_presentation_model.dart';
import 'track_list_use_case_output.dart';

class TrackListUseCase with StarterBloc<TrackListUseCaseOutput> {
  final Repository _repository;
  List<TrackListRowPresentationModel> _rows = [];
  String _searchTerm = "";
  AppState _appState;

  TrackListUseCase(this._repository, this._appState) {
    emit(TrackListUseCaseOutput.initialize());
  }

  Future<void> eventSearch(String searchTerm) async {
    _searchTerm = searchTerm;
    _refreshPresentation(isWaiting: true);

    final result = await _repository.trackManager.all(searchTerm);
    result.when(success: (data) {
      _rows = data
          .map((row) => TrackListRowPresentationModel.fromEntity(row))
          .toList();
      _appState.currentTrackList = data;
      _refreshPresentation();
    }, failure: (code, description) {
      emit(TrackListUseCaseOutput.error(code, description));
    }, domainIssue: (reason) {
      _refreshPresentation(domainIssue: reason);
    });
  }

  _refreshPresentation(
      {String? errorMessage,
      isWaiting = false,
      TrackDomainIssue? domainIssue}) {
    emit(TrackListUseCaseOutput.model(TrackListPresentationModel(
        rows: _rows,
        searchTerm: _searchTerm,
        isWaiting: isWaiting,
        errorMessage: errorMessage,
        semanticReason: domainIssue)));
  }

  void eventTrackTapped(int index) {
    _appState.selectedIndex = index;
    emit(TrackListUseCaseOutput.track());
  }
}
