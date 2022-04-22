import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_assistant/model/register_request.dart';
import 'package:my_assistant/utils/apiurl.dart';

// abstract class IRegisterRepository {
//   Future<dynamic> registerAssistant(RegisterRequest request);
//   Future<dynamic> verifyAssistant(
//     String email,
//     String password,
//     String confirmPassword,
//     String phoneNumber,
//   );
// }

class RegisterRepository {
  final _dio = Dio();
  @override
  Future registerAssistant(RegisterRequest request) async {
    final data = request.toMap();
    final response = await _dio.post(ApiUrl.register, data: data);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("error fetching post" + response.statusCode.toString());
    }
  }

  @override
  Future verifyAssistant(
    String email,
    String password,
    String confirmPassword,
    String phoneNumber,
  ) async {
    // TODO: implement verifyAssistant

    final data = {
      "email": email,
      "password": password,
      "confirm_password": confirmPassword,
      "phone_number": phoneNumber,
    };

    final response = await _dio.post(ApiUrl.register, data: data);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("error fetching post" + response.statusCode.toString());
    }
  }
}
