import 'package:flutter/material.dart';
import 'package:login_signup/core/constants/route_names.dart';
import 'package:login_signup/core/routes/routes.dart';

void main() {
  runApp(const loginApp());
}

class loginApp extends StatelessWidget {
  const loginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteNames.splash,
        onGenerateRoute: AppRoutes.generateRoute,
       );
  }
}
