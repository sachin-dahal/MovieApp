import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'api_constants.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic get(String path) async {
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    final response = await _client.get(
        "${ApiConstants.BASE_URL}$path?api_key=${ApiConstants.API_KEY}",
        headers: headers);

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      return decodedData;
    }
  }
}
