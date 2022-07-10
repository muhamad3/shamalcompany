import 'package:http/http.dart' as http;
import 'package:shamalcompany/domain.dart';

class RemoteServices {
   Future <Domain> getpost(String domain) async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://domain-availability.whoisxmlapi.com/api/v1?apiKey=at_MRdgpWH8aj4GgPbI3V62n08psGiT6&domainName=$domain&credits=DA');
    var respose = await client.get(uri);
  
      var json = respose.body;
      return domainFromJson(json);
 
  }
}
