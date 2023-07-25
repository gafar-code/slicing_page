import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:slicing_page/data/entities/user_entity.dart';

class UserRepository {
  Future<List<UserEntity>> listAll() async {
    var url = Uri.parse('https://64bf5df75ee688b6250d5224.mockapi.io/users');
    final response = await http.get(url);
    return (jsonDecode(response.body) as List).map((e) => UserEntity.fromJson(e)).toList();
  }
}
