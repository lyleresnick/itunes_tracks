import 'package:itunes_tracks/repo/entities/track.dart';

import 'app_state.dart';

class ITunesTracksAppState implements AppState {
  int? selectedIndex;
  List<Track> currentTrackList = [];

  ITunesTracksAppState._();
  static ITunesTracksAppState instance = ITunesTracksAppState._();
}

