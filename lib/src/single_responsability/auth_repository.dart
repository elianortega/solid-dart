import 'package:solid_examples/src/single_responsability/single_responsability.dart';
import 'package:http/http.dart' as http;

class NetworkException implements Exception {}

///Repository that handles the relationship
///between app logic and data source or API in this case
class AuthRepository {
  var client = http.Client();

  ///Method that makes the API call to signup user
  Future<User> signUpUser(User user) async {
    try {
      ///API call
      var response = await client.post(
        'https://noscope.dev/user/create',
        body: user.toMap(),
      );
    } catch (e) {
      throw NetworkException();
    }
  }
}
