import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/ui/app_state/app_state.dart';

class TestAppState implements AppState {
  @override
  int? selectedIndex;

  @override
  List<Track> currentTrackList = [];
}
