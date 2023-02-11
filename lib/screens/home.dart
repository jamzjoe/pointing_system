import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointing_system/bloc/employee_bloc.dart';
import 'package:pointing_system/constant/constant.dart';
import 'package:pointing_system/models/employer_model.dart';
import 'package:pointing_system/widgets/my_text.dart';

import '../widgets/my_input_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final TextEditingController _nameController = TextEditingController();
final TextEditingController _position = TextEditingController();
final TextEditingController _profile_url = TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(
          text: 'GodesQ Stars',
          type: 'heading',
        ),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(
        builder: (context, state) {
          if (state is EmployeeListLoaded) {
            return SafeArea(
                child: ListView(
              children: [
                ...state.employerModel.map((e) => ListTile(
                      title: Text(e.name!),
                      subtitle: Text(e.position!),
                    ))
              ],
            ));
          }
          return const CupertinoActivityIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => AlertDialog(
                title: const MyText(text: 'Add employee'),
                content: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MyInputField(
                          controller: _nameController, label: 'Employer Name'),
                      MyInputField(
                          controller: _position, label: 'Job Position'),
                      MyInputField(
                          controller: _profile_url,
                          label: 'Attach profile image'),
                      verticalSpace,
                      ElevatedButton(
                          onPressed: () {
                            final EmployerModel data = EmployerModel(
                                starCount: 0,
                                name: _nameController.text,
                                position: _position.text,
                                profileUrl: _profile_url.text);
                            BlocProvider.of<EmployeeBloc>(context)
                                .add(AddEmployeeEvent(data));
                            Navigator.pop(context);
                          },
                          child: const MyText(text: 'Confirm Add'))
                    ],
                  ),
                )),
          );
        },
        isExtended: true,
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}
