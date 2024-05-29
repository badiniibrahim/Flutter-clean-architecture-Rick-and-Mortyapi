import 'package:flutter/material.dart';
import 'package:rickandmorty/app/app.dart';
import 'package:rickandmorty/app/config/app_pages.dart';

Future<void> main() async {
  final String initialRoute = await Routes.INITIAL;

  runApp(App(
    initialRoute: initialRoute,
  ));
}
