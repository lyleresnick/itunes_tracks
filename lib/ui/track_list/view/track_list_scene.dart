import 'package:flutter/material.dart';
import 'package:itunes_tracks/ui/common/bloc_builder.dart';
import 'package:itunes_tracks/ui/common/constants.dart';
import 'package:itunes_tracks/ui/common/full_screen_loading_indicator.dart';
import 'package:itunes_tracks/ui/common/possibly_waiting.dart';
import 'package:itunes_tracks/ui/common/show_alert.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_presenter.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_presenter_output.dart';
import 'package:itunes_tracks/ui/common/bloc_provider.dart';
import 'package:itunes_tracks/ui/track_list/presenter/track_list_view_model.dart';

class TrackListScene extends StatelessWidget {
  final TrackListPresenter _presenter;

  TrackListScene(this._presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track List"),
      ),
      body: SafeArea(
        child: BlocBuilder<TrackListPresenter, TrackListPresenterOutput>(
            bloc: _presenter,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return FullScreenLoadingIndicator();
              }
              final data = snapshot.data;
              if (data is ShowModel) {
                final viewModel = data.model;

                if (viewModel.errorMessage != null) {
                  showAlert(
                      context: context,
                      titleText: "Message",
                      bodyText: viewModel.errorMessage!,
                      button1Title: "OK");
                }

                return PossiblyWaiting(
                  isWaiting: viewModel.isWaiting,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _SearchSection(),
                        Expanded(
                            child: ListView.builder(
                                itemCount: viewModel.rows.length,
                                itemBuilder: (context, i) {
                                  return _TrackListRow(
                                      viewModel: viewModel.rows[i], index: i);
                                })),
                      ]),
                );
              } else if (data is ShowInitialize) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _SearchSection(),
                      Expanded(
                          child:
                              Center(child: Text("Enter and Artist or Song"))),
                    ]);
              } else if (data is ShowError) {
                final errorText = "${data.code} ${data.description}";
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _SearchSection(),
                      Expanded(child: Center(child: Text(errorText))),
                    ]);
              } else {
                assert(false, "unknown event $data");
                return Container(color: Colors.red);
              }
            }),
      ),
    );
  }
}

class _SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = BlocProvider.of<TrackListPresenter>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: Constants.stdOuterMargin),
      child: TextField(
        onSubmitted: presenter!.eventSearch,
      ),
      height: 40,
    );
  }
}

class _TrackListRow extends StatelessWidget {
  final TrackListRowViewModel viewModel;
  final int index;
  _TrackListRow({required this.viewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    final presenter = BlocProvider.of<TrackListPresenter>(context);

    return GestureDetector(
      onTap: () {
        presenter!.eventTrackTapped(index);
      },
      child: Column(
        children: [
          if (index > 0) Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Image.network(
                  viewModel.artworkUrl100.toString(),
                  height: 85,
                  width: 85,
                ),
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(viewModel.trackName),
                    Text(viewModel.artistName),
                    Text(viewModel.trackTime),
                    Text(viewModel.trackPrice),
                  ])),
            ],
          )
        ],
      ),
    );
  }
}
