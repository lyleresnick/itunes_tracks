import 'package:http/http.dart';
import 'dart:convert';
import 'package:itunes_tracks/repo/factory/api_client.dart';

class NetworkApiClient extends ApiClient {
  static final _baseURLString = "http://itunes.apple.com";

  Future<Response> Function(Uri url, {Map<String, String>? headers}) _httpGet;
  NetworkApiClient(this._httpGet);


  Future<Map<String, dynamic>> search(String matching) async {
    final queryTerm = "?term=$matching";
    final response =
        await _httpGet(Uri.parse(_baseURLString + "/search" + queryTerm));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ApiClientException(
          statusCode: response.statusCode,
          description: response.reasonPhrase ?? 'Failed to load Tracks');
    }
  }
}
