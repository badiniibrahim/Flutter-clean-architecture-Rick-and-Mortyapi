import 'package:get/get.dart';
import 'package:rickandmorty/domain/entities/paging.dart';
import 'package:rickandmorty/domain/entities/results.dart';
import 'package:rickandmorty/domain/usecases/fetch_character_use_case.dart';
import 'package:tuple/tuple.dart';

class HomeController extends GetxController {
  final FetchCharacterUseCase _characterUseCase;
  HomeController(this._characterUseCase);

  final int _currentPage = 1;
  final int _pageSize = 20;
  final _paging = Rx<Paging?>(null);

  var results = RxList<Results>([]);

  fetchData() async {
    final newPaging =
        await _characterUseCase.execute(Tuple2(_currentPage, _pageSize));
    results.assignAll(newPaging.results);
    _paging.value = newPaging;
  }
}
