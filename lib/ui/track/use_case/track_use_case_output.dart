import 'track_presentation_model.dart';

abstract class TrackUseCaseOutput {}
class PresentNotFound extends TrackUseCaseOutput{}
class PresentModel extends TrackUseCaseOutput { final TrackPresentationModel model; PresentModel(this.model);}

