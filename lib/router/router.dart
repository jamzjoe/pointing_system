import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pointing_system/screens/company_list.dart';
import 'package:pointing_system/screens/employee_list.dart';
import 'package:pointing_system/screens/login.dart';

import '../screens/unknown_page.dart';

GoRouter router() {
  return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      errorBuilder: (context, state) => UnknownPage(
            errorMessage: state.error.toString(),
          ),
      routes: [
        GoRoute(
            path: '/',
            pageBuilder: (context, state) {
              return const MaterialPage(child: LoginScreen());
            },
            routes: const []),
        GoRoute(
          path: '/employees',
          pageBuilder: (context, state) =>
              const MaterialPage(child: EmployeesList()),
        ),
        GoRoute(
          path: '/companies',
          pageBuilder: (context, state) =>
              const MaterialPage(child: CompanyList()),
        ),
      ]);
}
