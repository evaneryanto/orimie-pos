import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'package:orimie/core/constants/variables.dart';
import 'package:orimie/data/models/response/auth_response_model.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final response =
        await http.post(Uri.parse('${Variables.baseUrl}/api/login'), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
