import 'package:flutter/cupertino.dart';
import 'package:itunes_tracks/ui/common/full_screen_loading_indicator.dart';

class PossiblyWaiting extends StatelessWidget {
  final Widget child;
  final bool isWaiting;

  const PossiblyWaiting({required this.child, this.isWaiting = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if(isWaiting)
          FullScreenLoadingIndicator()
      ],
    );
  }
}
