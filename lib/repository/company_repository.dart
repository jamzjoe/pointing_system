import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pointing_system/models/company_model.dart';

class CompanyRepository {
  Future<List<CompanyEmployeeModel>> fetchListOfCompany() async {
    QuerySnapshot<Map<String, dynamic>> response =
        await FirebaseFirestore.instance.collection('companies').get();

    List<CompanyEmployeeModel> data = response.docs
        .map((event) => CompanyEmployeeModel.fromJson(event.data()))
        .toList();

    return data;
  }
}
