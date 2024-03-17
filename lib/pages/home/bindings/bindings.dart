import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/service/app_service.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>AppService());
   Get.put( AppController());
  }

}