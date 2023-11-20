class User {
  final String name;
  final int age;
  final double height;
  final id;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
  });
    
    Map<String, dynamic> toJson() {
    return {
        'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}