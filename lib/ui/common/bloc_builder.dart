import 'package:flutter/widgets.dart';

import 'bloc.dart';
import 'bloc_provider.dart';

class BlocBuilder<SomeBloc extends Bloc<Output>, Output> extends StatelessWidget {
  final SomeBloc bloc;
  final Widget Function(BuildContext, AsyncSnapshot<Output>) builder;
  BlocBuilder({required this.bloc, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: bloc,
        child: StreamBuilder<Output>(stream: bloc.stream, builder: builder));
  }
}
