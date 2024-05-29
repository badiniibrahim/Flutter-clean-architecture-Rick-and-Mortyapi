import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rickandmorty/app/config/app_pages.dart';

class App extends StatelessWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: "Rick and Morty",
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
    );
  }
}
