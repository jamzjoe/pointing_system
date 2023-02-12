import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pointing_system/models/employer_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pointing_system/repository/employee_repository.dart';

part 'employee_event.dart';
part 'employee_state.dart';

final EmployeeRepository _employeeRepository = EmployeeRepository();

late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>>
    streamSubscription;

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeInitial()) {
    streamSubscription = FirebaseFirestore.instance
        .collection('employees')
        .snapshots()
        .listen((QuerySnapshot querySnapshot) async {
      add(const FetchEmployeeEvent());
    });

    on<EmployeeEvent>((event, emit) {});

    on<FetchEmployeeEvent>((event, emit) async {
      final data = await _employeeRepository.fetchEmployeeEvent();
      emit(EmployeeListLoaded(data));
    });

    on<AddEmployeeEvent>((event, emit) async {
      await _employeeRepository.addEmployee(event.data);
      // _employeeRepository.createCompany(CompanyEmployeeModel());
    });
  }
}
