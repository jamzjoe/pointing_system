part of 'companies_bloc_bloc.dart';

abstract class CompaniesBlocEvent extends Equatable {
  const CompaniesBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchCompanyEvent extends CompaniesBlocEvent {
  @override
  List<Object> get props => [];
}
