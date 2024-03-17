import 'package:bayan_task/pages/home/presentation/controller/app_controller.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class UserItem extends GetView<AppController> {
   UserItem({
    super.key,
    required this.index,
  });


  final int index;
  final AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        builder: (controller) => IntrinsicHeight(
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.listNumeric,
                        size: 15,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'User Id :',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${controller.userModel?[index]?.id ?? ""}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.user,
                        size: 15,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'User Name :',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${controller.userModel?[index]?.name ?? ""}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        FontAwesomeIcons.cakeCandles,
                        size: 15,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Birthday :',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          '${controller.userModel?[index]?.birthDate ??""}',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(
            thickness: 2,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.calendarCheck,
                        size: 15,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Age:',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${controller.userModel?[index]?.age ?? ""}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.mercury,
                        size: 15,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Gender :',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${controller.userModel?[index]?.gender ??''}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        FontAwesomeIcons.eyeSlash,
                        size: 15,
                        color: Colors.redAccent,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'Password :',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          controller.userModel?[index]?.password ??"",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}