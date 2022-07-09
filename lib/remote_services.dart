import 'package:shamalcompany/domain.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static Future<Post?> getdomain() async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://jsonplaceholder.typicode.com/users');
    var respose = await client.get(uri);
    if (respose.statusCode == 200) {
      var json = respose.body;
      return postFromJson(json);
    }
    return null;
  }
}
