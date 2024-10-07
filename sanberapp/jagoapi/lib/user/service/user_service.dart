import 'package:dio/dio.dart';
import 'package:jagoapi/user/model/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users?page=2';

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users =
            List.from(data.map((user) => UserModel.fromJson(user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> fetchUserDetail(int userId) async {
    try {
      final response = await dio.get('https://reqres.in/api/users/$userId');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        return UserModel.fromJson(data);
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}