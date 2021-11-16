import 'package:flutter_test/flutter_test.dart';
import 'package:itunes_tracks/ui/main_router/presenter/main_router_presenter.dart';
import 'package:itunes_tracks/ui/main_router/presenter/main_router_presenter_output.dart';

import 'test_utils.dart';

final testString = "abracadabra";

void main() {
  late MainRouterPresenter sut;

  setUp(() {
    sut = MainRouterPresenter();
  });

  test('sut.routerRequestTrack emits track', () async {
    executeStreamTest(
      stream: sut.stream,
      expectedValues: [
        MainRouterPresenterOutput.track(),
      ],
    );
    sut.routerRequestTrack();

  });

  tearDown(() {
    sut.dispose();
  });
}

