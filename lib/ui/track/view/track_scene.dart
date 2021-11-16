import 'package:flutter/material.dart';
import 'package:itunes_tracks/ui/common/bloc_builder.dart';
import 'package:itunes_tracks/ui/common/full_screen_loading_indicator.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter.dart';
import 'package:itunes_tracks/ui/track/presenter/track_presenter_output.dart';

class TrackScene extends StatelessWidget {
  final TrackPresenter _presenter;

  TrackScene(this._presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track"),
      ),
      body: SafeArea(
        child: BlocBuilder<TrackPresenter, TrackPresenterOutput>(
            bloc: _presenter,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return FullScreenLoadingIndicator();
              }
              return snapshot.data!.when(
                  model: (viewModel) {
                    return DefaultTextStyle(
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Image.network(
                                viewModel.artworkUrl100.toString(),
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(height: 16),
                              Text(viewModel.trackName),
                              Text(viewModel.artistName),
                              SizedBox(height: 8),
                              Text("Duration: ${viewModel.trackTime}"),
                              Text("Kind: ${viewModel.kind}"),
                              Text("Released: ${viewModel.releaseDate}"),
                              Text("Price: ${viewModel.trackPrice}"),
                              if (viewModel.shortDescription != null)
                                Text(viewModel.shortDescription!),
                              if (viewModel.longDescription != null)
                                Text(viewModel.longDescription!),
                            ]),
                      ),
                    );
                  },
                  error: (description) => Text(description));
            }),
      ),
    );
  }
}
