class EmployerModel {
  String? name;
  String? position;
  int? starCount;
  String? profileUrl;

  EmployerModel({this.name, this.position, this.starCount, this.profileUrl});

  EmployerModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    position = json['position'];
    starCount = json['star_count'];
    profileUrl = json['profile_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['position'] = this.position;
    data['star_count'] = this.starCount;
    data['profile_url'] = this.profileUrl;
    return data;
  }
}
