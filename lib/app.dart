import 'package:bayan_task/pages/home/presentation/view/home_screen.dart';
import 'package:bayan_task/routing/app_pages.dart';
import 'package:bayan_task/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/bindings/bindings.dart';

class BayanTask extends StatelessWidget {
  const BayanTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Bayan Task',
      getPages: AppPages.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
     initialRoute: Routes.HOME,
    );
  }
}
