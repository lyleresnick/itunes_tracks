import 'package:itunes_tracks/repo/entities/track.dart';

abstract class AppState {

  int? get selectedIndex;
  set selectedIndex(int? selectedId);

  List<Track> get currentTrackList;
  set currentTrackList(List<Track> currentTrackList);
}