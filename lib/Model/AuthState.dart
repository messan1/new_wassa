class AuthState {
  String? acsessToken;
  String? tokenType;
  String? id;
  String? username;
  String? email;
  String? role;
  bool? isActive;
  bool? isDeleted;

  AuthState(
      {required this.acsessToken,
      required this.tokenType,
      required this.id,
      required this.username,
      required this.email,
      required this.role,
      required this.isActive,
      required this.isDeleted});

  AuthState.fromJson(Map<String, dynamic> json) {
    acsessToken = json['acsessToken'];
    tokenType = json['tokenType'];
    id = json['id'];
    username = json['username'];
    email = json['email'];
    role = json['role'];
    isActive = json['isActive'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acsessToken'] = this.acsessToken;
    data['tokenType'] = this.tokenType;
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['role'] = this.role;
    data['isActive'] = this.isActive;
    data['isDeleted'] = this.isDeleted;
    return data;
  }
}
