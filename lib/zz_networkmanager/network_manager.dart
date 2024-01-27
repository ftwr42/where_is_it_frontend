import 'package:http/http.dart' as http;

class NetworkManager {
  final URL = "server.locol.online";

  static Future<void> sendPostRequestItems(String json) async {
    var headers = {'Content-Type': 'application/json'};
    var request =
        http.Request('POST', Uri.parse('http://server.locol.online/items'));
    request.body = json; //json.encode({"key1": "Azin", "key2": "love"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  static Future<void> sendPostRequestStore(String json) async {
    var headers = {'Content-Type': 'application/json'};
    var request =
        http.Request('POST', Uri.parse('http://server.locol.online/store'));
    request.body = json; //json.encode({"key1": "Azin", "key2": "love"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
