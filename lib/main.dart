import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointing_system/bloc/comapnies_bloc/companies_bloc_bloc.dart';
import 'package:pointing_system/constant/constant.dart';
import 'package:pointing_system/router/router.dart';

import 'bloc/employees_bloc/employee_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CompaniesBlocBloc>(
            create: (context) => CompaniesBlocBloc()),
        BlocProvider<EmployeeBloc>(
          create: (context) => EmployeeBloc()..add(const FetchEmployeeEvent()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router(),
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: white, surfaceTintColor: white),
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
