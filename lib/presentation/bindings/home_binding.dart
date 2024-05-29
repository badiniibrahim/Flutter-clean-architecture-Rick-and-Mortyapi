import 'package:get/instance_manager.dart';
import 'package:rickandmorty/data/repositories/charactere_repository.dart';
import 'package:rickandmorty/domain/usecases/fetch_character_use_case.dart';
import 'package:rickandmorty/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchCharacterUseCase(Get.put(CharacterRepositoryIml())));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
