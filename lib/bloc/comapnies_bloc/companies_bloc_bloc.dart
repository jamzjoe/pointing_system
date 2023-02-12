import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pointing_system/models/company_model.dart';
import 'package:pointing_system/repository/company_repository.dart';

part 'companies_bloc_event.dart';
part 'companies_bloc_state.dart';

final CompanyRepository _companyRepository = CompanyRepository();

class CompaniesBlocBloc extends Bloc<CompaniesBlocEvent, CompaniesBlocState> {
  CompaniesBlocBloc() : super(CompaniesBlocInitial()) {
    on<CompaniesBlocEvent>((event, emit) {});

    on<FetchCompanyEvent>((event, emit) async {
      try {
        final data = await _companyRepository.fetchListOfCompany();
        emit(CompanyFetchSuccess(data));
      } catch (e) {
        emit(CompanyFetchError());
      }
    });
  }
}
