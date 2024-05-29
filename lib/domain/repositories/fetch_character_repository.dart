import 'package:rickandmorty/domain/entities/paging.dart';

abstract class CharacterRepository {
  Future<Paging> fetchCharacter(int page);
}
