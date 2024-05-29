import 'package:rickandmorty/app/core/usecases/param_usecase.dart';
import 'package:rickandmorty/domain/entities/paging.dart';
import 'package:rickandmorty/domain/repositories/fetch_character_repository.dart';
import 'package:tuple/tuple.dart';

class FetchCharacterUseCase extends ParamUseCase<Paging, Tuple2<int, int>> {
  final CharacterRepository _characterRepository;
  FetchCharacterUseCase(this._characterRepository);

  @override
  Future<Paging> execute(param) {
    return _characterRepository.fetchCharacter(param.item1);
  }
}
