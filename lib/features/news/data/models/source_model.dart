import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'source_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SourceModel {
  SourceModel({
    @required this.id,
    @required this.name,
  });

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$SourceModelToJson(this);

  final String id;
  final String name;
}
