import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/repo/managers/Result.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_list_presentation_model.dart';
import 'track_list_use_case_output.dart';

class TrackListUseCase with StarterBloc<TrackListUseCaseOutput> {
  final Repository _repository;
  List<TrackListRowPresentationModel> _rows = [];
  String _searchTerm = "";

  TrackListUseCase(this._repository) {
    streamAdd(PresentInitialize());
  }

  void eventSearch(String searchTerm) async {
    _searchTerm = searchTerm;
    _refreshPresentation(isWaiting: true);

    final result = await _repository.trackManager.all(searchTerm);

    if (result is SemanticErrorResult<List<Track>, TrackSemanticEvent>)
      _refreshPresentation(semanticReason: result.reason);
    else if (result is FailureResult<List<Track>, TrackSemanticEvent>) {
      streamAdd(PresentError(result.code, result.description));
    } else if (result is SuccessResult<List<Track>, TrackSemanticEvent>) {
      _rows = result.data
          .map((row) => TrackListRowPresentationModel.fromEntity(row))
          .toList();
      _refreshPresentation();
    }
  }

  _refreshPresentation(
      {String? errorMessage,
      isWaiting = false,
      TrackSemanticEvent? semanticReason}) {
    streamAdd(PresentModel(TrackListPresentationModel(
        rows: _rows,
        searchTerm: _searchTerm,
        isWaiting: isWaiting,
        errorMessage: errorMessage,
        semanticReason: semanticReason)));
  }
}
