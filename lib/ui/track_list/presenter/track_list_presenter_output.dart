import 'track_list_view_model.dart';

abstract class TrackListPresenterOutput {}
class ShowInitialize extends TrackListPresenterOutput {}
class ShowModel extends TrackListPresenterOutput { final TrackListViewModel model; ShowModel(this.model);}
class ShowError extends TrackListPresenterOutput {final int code; final String description; ShowError(this.code, this.description);}

