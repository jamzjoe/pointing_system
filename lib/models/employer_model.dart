import 'package:cloud_firestore/cloud_firestore.dart';

class Employees {
  String? id;
  String? name;
  String? position;
  String? email;
  String? gender;
  int? points;
  String? companyID;
  String? motto;
  String? birtday;
  Timestamp? addedAt;
  String? profileURL;

  Employees(
      {this.name,
      this.position,
      this.email,
      this.id,
      this.gender,
      this.points,
      this.motto,
      this.birtday,
      this.profileURL,
      this.addedAt});

  Employees.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    companyID = json['company_id'];
    position = json['position'];
    email = json['email'];
    gender = json['gender'];
    points = json['points'];
    motto = json['motto'];
    birtday = json['birtday'];
    profileURL = json['profile_url'];
    addedAt = json['added_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['position'] = position;
    data['email'] = email;
    data['id'] = id;
    data['gender'] = gender;
    data['points'] = points;
    data['company_id'] = companyID;
    data['motto'] = motto;
    data['profile_url'] = profileURL;
    data['birtday'] = birtday;
    data['added_at'] = addedAt;
    return data;
  }
}
