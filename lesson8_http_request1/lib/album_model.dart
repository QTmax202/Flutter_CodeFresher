

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  static Album fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  static Album fromJsonForMethodPOST (Map<String, dynamic> json) {
    return Album(
      userId: json['id'],
      id: json['id'],
      title: json['title'],
    );
  }
}

