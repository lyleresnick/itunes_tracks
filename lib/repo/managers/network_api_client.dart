import 'package:http/http.dart';
import 'dart:convert';
import 'package:itunes_tracks/repo/factory/api_client.dart';

class NetworkApiClient extends ApiClient {
  static final _baseURLString = "http://itunes.apple.com";

  Future<Response> Function(Uri url, {Map<String, String>? headers}) _httpGet;
  NetworkApiClient(this._httpGet);

  Uri searchUri(matching) {
    return Uri.parse(_baseURLString + "/search?term=$matching");
  }

  Future<Map<String, dynamic>> search(String matching) async {
    final response =
        await _httpGet(searchUri(matching));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ApiClientException(
          statusCode: response.statusCode,
          description: response.reasonPhrase ?? 'Failed to load Tracks');
    }
  }
}
