import 'package:rickandmorty/data/models/paging_model.dart';
import 'package:rickandmorty/data/providers/network/apis/character_api.dart';
import 'package:rickandmorty/domain/entities/paging.dart';
import 'package:rickandmorty/domain/repositories/fetch_character_repository.dart';

class CharacterRepositoryIml extends CharacterRepository {
  @override
  Future<Paging> fetchCharacter(int page) async {
    final response = await CharacterAPI.fetchCharacter(page).request();
    return PagingModel.fromJson(response);
  }
}
