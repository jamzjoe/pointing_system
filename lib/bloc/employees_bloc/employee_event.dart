part of 'employee_bloc.dart';

abstract class EmployeeEvent extends Equatable {
  const EmployeeEvent();
}

class FetchEmployeeEvent extends EmployeeEvent {
  const FetchEmployeeEvent();
  @override
  List<Object> get props => [];
}

class AddEmployeeEvent extends EmployeeEvent {
  final Employees data;

  const AddEmployeeEvent(this.data);

  @override
  List<Object?> get props => [data];
}
