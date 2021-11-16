import 'package:itunes_tracks/repo/entities/track.dart';
import 'package:itunes_tracks/repo/entities/util.dart';

final track1 = Track(
  kind: "song",
  trackId: 278064271,
  artistName: "Flight of the Conchords",
  collectionName: "Flight of the Conchords",
  trackName: "Bowie",
  artworkUrl100: Uri.parse(
      "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/31/cb/e7/31cbe731-1efd-70b4-9290-a18d424becb1/source/100x100bb.jpg"),
  collectionPrice: 9.99,
  trackPrice: 0.99,
  releaseDate: inboundDateFormatter.parse("2008-04-21T07:00:00Z"),
  trackTimeMillis: 195947,
  currency: "USD",
  shortDescription: null,
  longDescription: null,
);

final track2 = Track(
  kind: "tv-episode",
  trackId: 280238503,
  artistName: "Flight of the Conchords",
  collectionName: "Flight of the Conchords, Season 1",
  trackName: "Bowie",
  artworkUrl100: Uri.parse(
      "https://is1-ssl.mzstatic.com/image/thumb/Music69/v4/1e/05/1d/1e051db5-8159-bab6-5743-0a5c18a538ee/source/100x100bb.jpg"),
  collectionPrice: 19.99,
  trackPrice: 1.99,
  releaseDate: inboundDateFormatter.parse("2007-07-22T07:00:00Z"),
  trackTimeMillis: 1638970,
  currency: "USD",
  shortDescription:
      "A body-conscious Bret gets dream advice from a rock idol; Murray pitches a Conchords tune to an audio greeting-card company.",
  longDescription:
      "Upset when Murray says he's too small during a band photo shoot, Bret decides that Jemaine can help him get over his funk. That night, a classic rock idol advises Bret to wear an eye patch. The plan backfires when Bret has depth-perception problems. Meanwhile, Murray pushes the band to let an audio-greeting-card company use their robot song.",
);

final track3 = Track(
  kind: "song",
  trackId: 671900213,
  artistName: "Flight of the Conchords",
  collectionName: "Flight of the Conchords (Bonus Track Version)",
  trackName: "Bowie",
  artworkUrl100: Uri.parse(
      "https://is1-ssl.mzstatic.com/image/thumb/Music/v4/8f/b2/e8/8fb2e88e-fc3d-9b1e-703a-868dfddc78e6/source/100x100bb.jpg"),
  collectionPrice: 19.99,
  trackPrice: 0.99,
  releaseDate: inboundDateFormatter.parse("2008-04-21T12:00:00Z"),
  trackTimeMillis: 195613,
  currency: "USD",
  shortDescription: null,
  longDescription: null,
);
