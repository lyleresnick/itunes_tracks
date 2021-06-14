import 'package:itunes_tracks/repo/factory/repository.dart';
import 'package:itunes_tracks/ui/common/starter_bloc.dart';
import 'main_router_use_case_output.dart';

class MainRouterUseCase with StarterBloc<MainRouterUseCaseOutput> {
  final Repository _repository;

  MainRouterUseCase(this._repository);
}
