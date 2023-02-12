class CompanyEmployeeModel {
  String? companyName;
  String? companyId;

  CompanyEmployeeModel({this.companyName, this.companyId});

  CompanyEmployeeModel.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    companyId = json['company_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['company_name'] = companyName;
    data['company_id'] = companyId;

    return data;
  }
}
