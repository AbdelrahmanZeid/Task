class User {
  int? id;
  String name;

  User( {required this.id,required this.name});

  factory User.fromJson(Map<String, dynamic> jsonData) {
    return User(
     id:  jsonData['id'],
    name:   jsonData['name'],
    );
  }
}

