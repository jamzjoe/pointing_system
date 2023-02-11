import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pointing_system/models/employer_model.dart';

class EmployeeRepository {
  Future<List<EmployerModel>> fetchEmployeeEvent() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('employees')
        .limit(10)
        .get();

    final data =
        snapshot.docs.map((e) => EmployerModel.fromJson(e.data())).toList();

    return data;
  }

  Future addEmployee(EmployerModel employerModel) async {
    final response = await FirebaseFirestore.instance
        .collection('employees')
        .add(employerModel.toJson());
  }
}
