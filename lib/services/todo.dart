import 'dart:convert';
import 'package:http/http.dart';

class Todo {
  String type;
  String title = "";

  Todo({required this.type});
  
  Future<void> getTodo() async {
    try {
      Response response = await get(
        Uri.parse('https://68be97479c70953d96ecd286.mockapi.io/fooda/$type'),
      );
      List<dynamic> data = jsonDecode(response.body);
       print(data);
    } catch (e) {
      print("Error: $e");
      title = "could not get name";
    }
  }
}

