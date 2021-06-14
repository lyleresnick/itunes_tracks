import 'package:itunes_tracks/repo/entities/util.dart';

class Track {
  final String kind;
  final int trackId;
  final String artistName;
  final String? collectionName;
  final String trackName;
  final Uri artworkUrl100;
  final double? collectionPrice;
  final double trackPrice;
  final DateTime? releaseDate;
  final int trackTimeMillis;
  final String currency;
  final String? shortDescription;
  final String? longDescription;

  Track(
      {required this.kind,
      required this.trackId,
      required this.artistName,
      this.collectionName,
      required this.trackName,
      required this.artworkUrl100,
      this.collectionPrice,
      required this.trackPrice,
      this.releaseDate,
      required this.trackTimeMillis,
      required this.currency,
      this.shortDescription,
      this.longDescription});

  static Track? fromJson(Map<String, dynamic> json) {

    try {
      final trackId = json['trackId'] as int?;
      if (trackId == null) throw FormatException();
      final trackName = json['trackName'] as String?;
      if (trackName == null) throw FormatException();
      final kind = json['kind'] as String?;
      if (kind == null) throw FormatException();
      final artistName = json['artistName'] as String?;
      if (artistName == null) throw FormatException();
      final currency = json['currency'] as String?;
      if (currency == null) throw FormatException();
      final trackPrice = json['trackPrice'] as double?;
      if (trackPrice == null) throw FormatException();
      final trackTimeMillis = json['trackTimeMillis'] as int?;
      if (trackTimeMillis == null) throw FormatException();
      final artworkUrl100String = json['artworkUrl100'] as String?;
      if (artworkUrl100String == null) throw FormatException();
      Uri artworkUrl100 = Uri.parse(artworkUrl100String);

      DateTime? releaseDate;
      final releaseDateString = json['releaseDate'] as String?;
      if (releaseDateString != null) {
        releaseDate = inboundDateFormatter.parse(releaseDateString);
      }

      return Track(
        kind: json['kind'],
        trackId: trackId,
        artistName: artistName,
        collectionName: json['collectionName'],
        trackName: trackName,
        artworkUrl100: artworkUrl100,
        collectionPrice: json['collectionPrice'],
        trackPrice: trackPrice,
        releaseDate: releaseDate,
        trackTimeMillis: trackTimeMillis,
        currency: json['currency'],
        shortDescription: json['shortDescription'],
        longDescription: json['longDescription'],
      );

    }
    catch (e) {
      return null;
    }

  }
}
