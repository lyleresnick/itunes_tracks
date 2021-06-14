import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/repo/managers/Result.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';

import 'track_presentation_model.dart';
import 'track_use_case_output.dart';

class TrackUseCase with StarterBloc<TrackUseCaseOutput> {

    final Repository _repository;
    final int id;

    TrackUseCase(this.id, this._repository) {
        _initialize();
    }

    void _initialize() async {
        final result = await _repository.trackManager.fetch(id);

        if (result is SemanticErrorResult<Track,TrackSemanticEvent>)
            streamAdd(PresentNotFound());
        else if (result is FailureResult<Track,TrackSemanticEvent>) {
            assert(false, "this should never happen");
        }
        else if (result is SuccessResult<Track,TrackSemanticEvent>) {
            streamAdd(PresentModel(TrackPresentationModel.fromEntity(result.data)));
        }
    }
}
