import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointing_system/bloc/comapnies_bloc/companies_bloc_bloc.dart';
import 'package:pointing_system/widgets/my_text.dart';

class CompanyList extends StatefulWidget {
  const CompanyList({super.key});

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompaniesBlocBloc, CompaniesBlocState>(
      builder: (context, state) {
        if (state is CompanyFetchSuccess) {
          return Scaffold(
            appBar: AppBar(
              title: const MyText(text: 'My Companies'),
            ),
            body: ListView(
              children: [
                ...state.companyList.map((e) =>
                    CupertinoListTile(title: MyText(text: e.companyName!)))
              ],
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CupertinoActivityIndicator(),
          ),
        );
      },
    );
  }
}
