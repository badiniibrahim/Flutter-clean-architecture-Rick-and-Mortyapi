import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rickandmorty/presentation/bindings/home_binding.dart';
import 'package:rickandmorty/presentation/pages/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
