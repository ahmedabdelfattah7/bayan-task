import 'package:bayan_task/pages/home/bindings/bindings.dart';
import 'package:bayan_task/pages/home/presentation/view/home_screen.dart';
import 'package:bayan_task/pages/home/presentation/view/widgets/user_details_screen.dart';
import 'package:bayan_task/routing/routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: Routes.HOME,
        page: () =>  HomeScreen(),
        binding: HomeBindings()),
    GetPage(
        name: Routes.DETAILS,
        page: () =>  UserDetailsWidget(),
        binding: HomeBindings()),

  ];
}