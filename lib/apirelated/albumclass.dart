class Album {
  final String email;
  final String password;
  final String roleName;

  const Album({required this.email, required this.password, required this.roleName});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      email: json['email'],
      password: json['password'],
      roleName: json['roleName'],
    );
  }
}