class UserModel {
  List<dynamic> result;

  UserModel({required this.result});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> fullData = [];
    for (var i = 0; i < 5; i++) {
      fullData.add(json["results"][i]);
    }
    fullData = fullData.map(
      (user) {
        return {
          "name": user["name"]["first"] + " " + user["name"]["last"],
          "email": user["email"],
          "image": user["picture"]["thumbnail"],
        };
      },
    ).toList();

    return UserModel(result: fullData);
  }
}
