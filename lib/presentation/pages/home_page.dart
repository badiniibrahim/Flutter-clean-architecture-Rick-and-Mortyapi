import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rickandmorty/presentation/controllers/home_controller.dart';
import 'package:rickandmorty/presentation/pages/widget/article_cell.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX(
      init: controller,
      initState: (state) {
        controller.fetchData();
      },
      builder: (_) {
        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Character'),
          ),
          child: ListView.builder(
            itemCount: controller.results.length,
            itemBuilder: (context, index) {
              final result = controller.results[index];
              return GestureDetector(
                onTap: () {},
                child: CharacterCell(results: result),
              );
            },
          ),
        );
      },
    ));
  }
}
