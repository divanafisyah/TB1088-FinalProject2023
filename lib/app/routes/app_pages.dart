import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart' show HomeBinding;
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart' show LoginBinding;
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
