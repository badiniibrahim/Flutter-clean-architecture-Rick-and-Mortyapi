// ignore_for_file: overridden_fields

import 'package:rickandmorty/domain/entities/results.dart';
import 'package:json_annotation/json_annotation.dart';

part 'results_model.g.dart';

@JsonSerializable()
class ResultsModel extends Results {
  ResultsModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.created,
  }) : super(
          id: id,
          name: name,
          status: status,
          species: species,
          type: type,
          gender: gender,
          image: image,
          created: created,
        );

  @override
  int? id;
  @override
  String? name;
  @override
  String? status;
  @override
  String? species;
  @override
  String? type;
  @override
  String? gender;
  @override
  String? image;
  @override
  String? created;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);
}
