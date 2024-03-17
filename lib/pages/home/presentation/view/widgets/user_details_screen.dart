import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class UserDetailsWidget extends GetView<AppController>  {
  UserDetailsWidget({
    super.key,
      this.index,
  });
  int? index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserItem(index: index ??0),
            InkWell(
              onTap: () {
                controller.deleteItem(index ?? 0);

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Delete item',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
