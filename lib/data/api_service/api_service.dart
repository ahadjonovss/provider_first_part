import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'dart:convert' as convert;
import '../models/card_model.dart';
class ApiService {
  static Future<List> getUserData() async {
    try {
      Response response =
      await https.get(Uri.parse("https://banking-api.free.mockoapp.net/user_cards"));
      if (response.statusCode == 200) {
        var jsonResponse =
        convert.jsonDecode(response.body);
        return jsonResponse.map((e) => CreditCard.fromJson(e)).toList();

      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}