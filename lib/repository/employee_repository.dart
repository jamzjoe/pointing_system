import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pointing_system/models/company_model.dart';
import 'package:pointing_system/models/employer_model.dart';

class EmployeeRepository {
  Future<List<Employees>> fetchEmployeeEvent() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('employees')
        .limit(10)
        .get();

    final data =
        snapshot.docs.map((e) => Employees.fromJson(e.data())).toList();

    return data;
  }

  Future addEmployee(Employees employees) async {
    final response = FirebaseFirestore.instance.collection('employees').doc();
    employees.id ??= response.id;
    employees.addedAt = Timestamp.now();

    response.set(employees.toJson());
  }

  Future updateEmployee(String id) async {}

  Future<bool> createCompany(CompanyEmployeeModel companyEmployeeModel) async {
    try {
      final response = FirebaseFirestore.instance.collection('companies').doc();
      companyEmployeeModel.companyId = response.id;
      response.set(companyEmployeeModel.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }
}
