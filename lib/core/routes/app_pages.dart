import 'package:get/get.dart';
import 'package:promina_gallery_task/core/routes/app_routes.dart';
import 'package:promina_gallery_task/features/home/view/home_view.dart';
import 'package:promina_gallery_task/features/login/view/login_view.dart';

abstract class AppPages {
  static const initialRoute=AppRoutes.login;
  static final routesList =[
    GetPage(name: AppRoutes.login, page: () => const LoginView(),),
    GetPage(name: AppRoutes.login, page: () => const HomeView(),),
  ];

}