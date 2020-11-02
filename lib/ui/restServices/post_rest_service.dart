import 'dart:convert';

import 'package:CustomerApp/ui/model/login_model.dart';
import 'package:CustomerApp/ui/model/registration_model.dart';
import 'package:http/http.dart' as client;

import '../loginScreen/forgot_passoword.dart';

class PostRestService {
  static String url = "https://www.eposhybrid.uk/index.php/customerServices/";





  

  static Future<dynamic> registerUser(String name, String email, String mobile,
      String password, int storedFlag, int promotionFlag) async {
    Map<String, dynamic> info = {
      "name": name,
      "email": email,
      "mobile": mobile,
      "password": password,
      "stored_flag": storedFlag,
      "promotions_flag": promotionFlag
    };

    Map<String, dynamic> data = {
      "auth_code": "HZFAYW",
      "customer_details": json.encode(info)
    };

    final response =
        await client.post(url + "customerRegistration_v2", body: json.encode(data));

    print(response.body);
    // Map decodedResponse = json.decode(response.body);
    print(response.body);
    // print(decodedResponse);
    return registrationModelFromMap(response.body);
  }






  static Future<dynamic> login(String email, String password) async {
    print(email);
    print(password);

    Map<String, dynamic> data = {
      "auth_code": "HZFAYW",
      "user_name": email,
      "password": password,
    };

    final response = await client.post(url + "customerLogin_v2", body: json.encode(data));

    print(response.body);
   
    return loginModelFromMap(response.body);
  }







  static Future<dynamic> forgotPassword(String email) async {
    print(email);
    // print(password);

    Map<String, dynamic> data = {
      "auth_code": "HZFAYW",
      "email": email,
      // "password": password,
    };

    final response = await client.post(url + "forgotPassword", body: json.encode(data));

    print(response.body);
   
    return loginModelFromMap(response.body);
  }
}
