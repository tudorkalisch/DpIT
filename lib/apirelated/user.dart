class User {
  
  var _userId;
  var _username;
  var _roleName;
  var _email;
  var _token;

  User(
      { required userId,
        required username,
        required roleName,
        required email,
        required token}) {
    this._userId = userId;
    this._username = username;
    this._roleName = roleName;
    this._email = email;
    this._token = token;
  }

  // Properties
  get userId => _userId;
  get username => _username;
  get roleName => _roleName;
  get email => _email;

  String getToken() {
    return this._token;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId : json['userId'],
      username : json['username'],
      roleName : json['roleName'],
      email : json['email'],
      token: json['accessToken']
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['username'] = this._username;
    data['roleName'] = this._roleName;
    data['email'] = this._email;
    data['accessToken'] = this._token;
    return data;
  }
}