// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter_test/flutter_test.dart';
import 'package:rickandmorty/domain/usecases/fetch_character_use_case.dart';
import 'package:tuple/tuple.dart';

import 'repositories/mock_result_repository.dart';

void main() {
  test("Fetch character test ", () async {
    const pageSize = 20;
    const currentPage = 1;

    //Mock data
    final fetchCharacterUseCase = FetchCharacterUseCase(MockResultRepository());
    final paging = await fetchCharacterUseCase
        .execute(const Tuple2(currentPage, pageSize));

    // Verify that data has created.
    expect(paging.results.length, 20);
  });
}
