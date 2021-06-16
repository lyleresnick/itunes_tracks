import 'track_list_presentation_model.dart';

abstract class TrackListUseCaseOutput {}
class PresentInitialize extends TrackListUseCaseOutput {}
class PresentModel extends TrackListUseCaseOutput { final TrackListPresentationModel model; PresentModel(this.model);}
class PresentTrack extends TrackListUseCaseOutput {}
class PresentError extends TrackListUseCaseOutput {final int code; final String description; PresentError(this.code, this.description);}
