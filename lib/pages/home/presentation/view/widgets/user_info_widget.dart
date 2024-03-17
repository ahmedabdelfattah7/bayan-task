import 'package:bayan_task/pages/home/model/user_model.dart';
import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_details_screen.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class UserInfoWidget extends GetView<AppController>  {

  UserInfoWidget({
    Key? key,
    required this.index,
  }) : super(key: key);
  int? index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) => InkWell(
        onTap: () {
          Get.to(() => UserDetailsWidget(index: index,));
        },
        child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        width: double.infinity,
        height: 200,
        child:      UserItem(index: index ??0),
            ),
      ),
    );
  }
}



