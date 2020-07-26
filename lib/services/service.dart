import 'package:deneme/model/users.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

String url = 'http://localhost:8081/allquestions';
Future<Post> getPost() async {
  final response = await http.get(url);
  return postFromJson(response.body);
}
