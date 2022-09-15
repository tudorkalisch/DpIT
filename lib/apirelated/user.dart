class User {
  
  late String _userId;
  late String _username;
  late String _roleName;
  late String _email;

   constructorUser(
      {required String userId,
        required String username,
        required String roleName,
        required String email}) {
    this._userId = userId;
    this._username = username;
    this._roleName = roleName;
    this._email = email;
  }

  // Properties
  String get userId => _userId;
  set userId(String userId) => _userId = userId;
  String get username => _username;
  set username(String username) => _username = username;
  String get roleName => _roleName;
  set roleName(String roleName) => _roleName = roleName;
  String get email => _email;
  set email(String email) => _email = email;

  User.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _username = json['username'];
    _roleName = json['roleName'];
    _email = json['email'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['username'] = this._username;
    data['roleName'] = this._roleName;
    data['email'] = this._email;
    return data;
  }
}