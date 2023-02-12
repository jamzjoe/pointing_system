part of 'employee_bloc.dart';

class EmployeeState extends Equatable {
  const EmployeeState();

  @override
  List<Object?> get props => [];
}

class EmployeeInitial extends EmployeeState {
  @override
  List<Object?> get props => [];
}

class EmployeeListLoaded extends EmployeeState {
  final List<Employees> employerModel;

  const EmployeeListLoaded(this.employerModel);
  @override
  List<Object?> get props => [employerModel];
}

class EmployeeListError extends EmployeeState {
  final String errorMessage;
  const EmployeeListError(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
