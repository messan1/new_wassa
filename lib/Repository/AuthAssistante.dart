
import 'package:new_wassa/app/Endpoint.dart';
import 'package:new_wassa/utils/Assistance/RequestAssistance.dart';


class AuthAssistance {
  static Future<dynamic> getAuthState() async {
    var response =
        await RequestAssistance.request(ApiEndpoint + "/api/test/all");
    return response;
  }

}
