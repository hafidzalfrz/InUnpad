class Article {
  String image;
  String eventName;
  String location;
  String date;

  Article({
    this.image,
    this.eventName,
    this.location,
    this.date
  });

  // factory User.fromJson(Map<String, dynamic> json) => User(
  //       accessToken: json["access_token"],
  //       name: json["user"]["name"],
  //       email: json["user"]["email"],
  //     );

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data["session_id"] = this.accessToken;
  //   data["name"] = this.name;
  //   data["username"] = this.email;
  //   return data;
  // }
}