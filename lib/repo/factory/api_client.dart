
class ApiClientException {
  int statusCode;
  String description;
  ApiClientException({required this.statusCode, required this.description});
}

abstract class ApiClient {
  Future<Map<String, dynamic>>  search(String matching);
}