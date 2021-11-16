import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes_tracks/repo/entities/util.dart';
part 'track.freezed.dart';

@freezed
class Track with _$Track {
  const factory Track({
    required String kind,
    required int trackId,
    required String artistName,
    String? collectionName,
    required String trackName,
    required Uri artworkUrl100,
    double? collectionPrice,
    required double trackPrice,
    DateTime? releaseDate,
    required int trackTimeMillis,
    required String currency,
    String? shortDescription,
    String? longDescription,
  }) = _Track;

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
      final artworkUrl100 = Uri.parse(artworkUrl100String);
      if (!artworkUrl100.hasScheme) throw FormatException();

      DateTime? releaseDate;
      final releaseDateString = json['releaseDate'] as String?;
      if (releaseDateString != null) {
        releaseDate = inboundDateFormatter.parse(releaseDateString);
      }

      return Track(
        kind: kind,
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
    } catch (e) {
      return null;
    }
  }
}
