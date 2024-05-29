// ignore_for_file: overridden_fields

import 'package:rickandmorty/data/models/results_model.dart';
import 'package:rickandmorty/domain/entities/paging.dart';
import 'package:rickandmorty/domain/entities/results.dart';

class PagingModel extends Paging {
  PagingModel({
    required this.results,
  }) : super(results: results);

  final List<Results> results;

  @override
  factory PagingModel.fromJson(Map<String, dynamic> json) => PagingModel(
        results:
            List.from(json["results"].map((x) => ResultsModel.fromJson(x))),
      );
}
