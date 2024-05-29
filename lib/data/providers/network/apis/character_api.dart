import 'package:rickandmorty/data/providers/network/api_endpoint.dart';
import 'package:rickandmorty/data/providers/network/api_provider.dart';
import 'package:rickandmorty/data/providers/network/api_request_representable.dart';

enum CharacterType { fetchCharacter }

class CharacterAPI implements APIRequestRepresentable {
  final CharacterType type;
  int? page;

  CharacterAPI._({
    required this.type,
    this.page,
  });

  CharacterAPI.fetchCharacter(int page)
      : this._(
          type: CharacterType.fetchCharacter,
          page: page,
        );

  @override
  get body => null;

  @override
  String get endpoint => APIEndpoint.rickandmortyapi;

  @override
  Map<String, String>? get headers => null;

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  String get path {
    switch (type) {
      case CharacterType.fetchCharacter:
        return "/character";
    }
  }

  @override
  Map<String, String> get query {
    switch (type) {
      case CharacterType.fetchCharacter:
        return {"page": "$page"};
    }
  }

  @override
  String get url => endpoint + path;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }
}
