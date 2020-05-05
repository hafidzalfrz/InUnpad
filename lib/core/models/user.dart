class User {
  String accessToken;
  String name;
  String email;

  User({
    this.accessToken,
    this.name,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        accessToken: json["access_token"],
        name: json["user"]["name"],
        email: json["user"]["email"],
      );

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data["session_id"] = this.accessToken;
  //   data["name"] = this.name;
  //   data["username"] = this.email;
  //   return data;
  // }
}