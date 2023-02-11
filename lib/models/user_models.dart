class User {
  String? name;
  num? id;
  String? position;
  num? points;
  String? gender;
  num? age;
  String? birthday;
  String? height;
  String? motto;
  String? profileImage;
  String? coverImage;

  User(
      {this.name,
      this.id,
      this.position,
      this.points,
      this.gender,
      this.age,
      this.birthday,
      this.height,
      this.motto,
      this.profileImage,
      this.coverImage});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    position = json['position'];
    points = json['points'];
    gender = json['gender'];
    age = json['age'];
    birthday = json['birthday'];
    height = json['height'];
    motto = json['motto'];
    profileImage = json['profile_image'];
    coverImage = json['cover_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['position'] = position;
    data['points'] = points;
    data['gender'] = gender;
    data['age'] = age;
    data['birthday'] = birthday;
    data['height'] = height;
    data['motto'] = motto;
    data['profile_image'] = profileImage;
    data['cover_image'] = coverImage;
    return data;
  }
}
