import 'package:flutter_assessment/app/core/base/common_function.dart';

class RepositoryEntity {
  int id;
  String name;
  String fullName;
  String description;
  String login;
  String imageUrl;
  String updatedAt;
  String language;

  RepositoryEntity({
    required this.id,
    required this.name,
    required this.fullName,
    required this.description,
    required this.login,
    required this.imageUrl,
    required this.updatedAt,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'full_name': fullName,
      'login': login,
      'image_url': imageUrl,
      'description': description,
      'updated_at': updatedAt,
      'language': language,
    };
  }

  factory RepositoryEntity.fromMap(Map<String, dynamic> map) {
    return RepositoryEntity(
        id: map['id'],
        name: map['name'],
        fullName: map['full_name'],
        login: map['login'],
        imageUrl: map['image_url'],
        description: map['description'],
        updatedAt: CommonFunction.getFormattedDateTime(map['updated_at']),
        language: map['language']);
  }
}
