part of 'companies_bloc_bloc.dart';

abstract class CompaniesBlocState extends Equatable {
  const CompaniesBlocState();
}

class CompaniesBlocInitial extends CompaniesBlocState {
  @override
  List<Object?> get props => [];
}

class CompanyFetchSuccess extends CompaniesBlocState {
  final List<CompanyEmployeeModel> companyList;

  const CompanyFetchSuccess(this.companyList);
  @override
  List<Object?> get props => [companyList];
}

class CompanyFetchError extends CompaniesBlocState {
  @override
  List<Object?> get props => [];
}

class CompanyFetchLoading extends CompaniesBlocState {
  @override
  List<Object?> get props => [];
}
