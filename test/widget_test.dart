import 'package:flutter_test/flutter_test.dart';
import 'package:slicing_page/data/repositories/user_repository.dart';

void main() {
  test('GET USER EXAMPLE', () async {
    final _userRepo = UserRepository(); // inisialisasi repo

    final users = await _userRepo.listAll(); // mengambil seluruh data user

    print(users.length); // menampilkan panjang data

    users.forEach((user) {
      print("id: "+user.id);
      print("avatar: "+user.avatar);
      print("name: "+user.name);
    });
  });
}
