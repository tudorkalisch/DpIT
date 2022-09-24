class UserToRegister {
  
  var _userId;
  var _username;
  var _roleName;
  var _email;
  var _companyName;
  var _CUI;
  var _countryOfResidence;
  var _city;
  var _telephoneNumber;
  late DateTime _foundingDate;

  UserToRegister(
      { required userId,
        required username,
        required roleName,
        required email,
        required companyName,
        required CUI,
        required countryOfResidence,
        required city,
        required telephoneNumber,
        required foundingDate
        }) {
    this._userId = userId;
    this._username = username;
    this._roleName = roleName;
    this._email = email;
    this._companyName = companyName;
    this._CUI = CUI;
    this._countryOfResidence = countryOfResidence;
    this._city = city;
    this._telephoneNumber = telephoneNumber;
    this._foundingDate = foundingDate;

  }

  // Properties
  get userId => _userId;
  get username => _username;
  get roleName => _roleName;
  get email => _email;
  get companyName => _companyName;
  get cui => _CUI;
  get countryOfResidence => _countryOfResidence;
  get city => _city;
  get telephoneNumber => _telephoneNumber;
  get foundingDate => _foundingDate;


  factory UserToRegister.fromJson(Map<String, dynamic> json) {
    return UserToRegister(
      userId : json['userId'],
      username : json['username'],
      roleName : json['roleName'],
      email : json['email'],
      companyName: json['companyName'],
      CUI: json['CUI'],
      countryOfResidence: json['countryOfResidence'],
      city: json['city'],
      telephoneNumber: json['telephoneNumber'],
      foundingDate: json['foundingDate'],
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['username'] = this._username;
    data['roleName'] = this._roleName;
    data['email'] = this._email;
    data['companyName'] = this._companyName;
    data['CUI'] = this._CUI;
    data['countryOfResidence'] = this._countryOfResidence;
    data['city'] = this._city;
    data['telephoneNumber'] = this._telephoneNumber;
    data['foundingDate'] = this._foundingDate;
    return data;
  }
}