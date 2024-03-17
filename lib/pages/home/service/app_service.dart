import 'package:bayan_task/pages/home/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class AppService extends GetxService {
  final Dio _dio = Dio();

  Future<List<UserModel>?> getUsers() async {
    try {
      final response = await _dio.get(
          'https://silly-tereshkova.38-100-170-33.plesk.page/User/getallusers');

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data;
        if (responseData.isNotEmpty) {
          return responseData.map((e) => UserModel.fromJson(e)).toList();
        }
      } else {
        print('HTTP Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
    return null;
  }
}
