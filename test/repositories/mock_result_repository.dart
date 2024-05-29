import 'dart:convert';
import 'dart:io';

import 'package:rickandmorty/data/models/paging_model.dart';
import 'package:rickandmorty/domain/entities/paging.dart';
import 'package:rickandmorty/domain/repositories/fetch_character_repository.dart';

class MockResultRepository extends CharacterRepository {
  @override
  Future<Paging> fetchCharacter(int page) async {
    final file = File('test/data/results_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return PagingModel.fromJson(data);
  }
}
