class SourceModel {
  SourceModel({
    required this.id,
    required this.name,
  });

  factory SourceModel.fromMap(Map<String, dynamic> map) => SourceModel(
        id: map['id'] as String? ?? "",
        name: map['name'] as String? ?? "",
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
      };

  final String id;
  final String name;
}
