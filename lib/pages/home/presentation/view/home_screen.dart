import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_details_screen.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_info_widget.dart';
import 'package:bayan_task/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<AppController> {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'User info',
            style: TextStyle(
              fontSize: 16,
              color: Colors.amber,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: controller.userModel != null
              ? ListView.separated(
                  itemBuilder: (context, index) => UserInfoWidget(index: index),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemCount: controller.userModel?.length ?? 2,
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
