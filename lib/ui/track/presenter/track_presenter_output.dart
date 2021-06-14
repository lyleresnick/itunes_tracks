import 'track_view_model.dart';

abstract class TrackPresenterOutput {}
class ShowNotFound extends TrackPresenterOutput{}
class ShowModel extends TrackPresenterOutput { final TrackViewModel viewModel; ShowModel(this.viewModel);}

