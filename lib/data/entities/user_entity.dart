class UserEntity {
  final DateTime createdAt;
  final String name;
  final String avatar;
  final String id;

  UserEntity({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "avatar": avatar,
        "id": id,
      };
}
