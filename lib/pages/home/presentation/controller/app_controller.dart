import 'package:bayan_task/pages/home/model/user_model.dart';
import 'package:bayan_task/pages/home/service/app_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppController extends SuperController<bool> {
  final AppService _apiService = Get.put(AppService());

  List<UserModel?>? userModel;

  @override
  void onInit() {
    print('AppController initialized');
    request();
    super.onInit();
  }

  void request() async {
    try {
      final response = await _apiService.getUsers();

      if (response != null) {
        userModel = response;
        print('UserModel received: ${userModel!.length}');
      } else {
        print('No UserModel received');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
    update();
  }
  void deleteItem(int index) {
    if (userModel != null && index >= 0 && index < userModel!.length) {
      userModel!.removeAt(index);
      update(); // Notify listeners about the change
    }
  }
  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
