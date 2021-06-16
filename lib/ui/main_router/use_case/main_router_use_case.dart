import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'package:itunes_tracks/ui/track/use_case/track_use_case.dart';
import 'package:itunes_tracks/ui/track_list/use_case/track_list_use_case.dart';
import 'main_router_use_case_output.dart';

class MainRouterUseCaseState implements TrackListUseCaseState, TrackUseCaseState {
  int? selectedId;

  MainRouterUseCaseState._();
  static MainRouterUseCaseState instance = MainRouterUseCaseState._();
}

class MainRouterUseCase with StarterBloc<MainRouterUseCaseOutput> {
  final Repository _repository;

  MainRouterUseCase(this._repository);
}
