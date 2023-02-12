import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pointing_system/bloc/comapnies_bloc/companies_bloc_bloc.dart';
import 'package:pointing_system/constant/constant.dart';
import 'package:pointing_system/models/company_model.dart';
import 'package:pointing_system/repository/employee_repository.dart';
import 'package:pointing_system/widgets/my_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final EmployeeRepository _employeeRepository = EmployeeRepository();
final TextEditingController _companyNameController = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _companyNameController,
                decoration: const InputDecoration(
                    label: MyText(text: 'Create your first company')),
              ),
              Padding(
                padding: defaultPadding,
                child: ElevatedButton.icon(
                    onPressed: () async {
                      final CompanyEmployeeModel data = CompanyEmployeeModel(
                          companyName: _companyNameController.text);
                      final result =
                          await _employeeRepository.createCompany(data);
                      if (result == true) {
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<CompaniesBlocBloc>(context)
                            .add(FetchCompanyEvent());

                        // ignore: use_build_context_synchronously
                        context.go('/companies');
                      }
                    },
                    icon: const Icon(CupertinoIcons.building_2_fill),
                    label: const MyText(text: 'Create Company')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
