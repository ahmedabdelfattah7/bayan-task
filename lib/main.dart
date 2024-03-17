
import 'package:bayan_task/app.dart';
import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/service/app_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(()=>AppService());
  Get.put( AppController());
  runApp(  BayanTask());
}



