import 'package:flutter/material.dart';
import 'package:intern2grow/core/utils/app_strings.dart';
import 'package:intern2grow/features/authentication/sign/presentation/screens/login_screen.dart';
import 'package:intern2grow/features/authentication/sign/presentation/screens/register_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ("/"):
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );
      case (AppStrings.registerRoute):
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
    return null;
  }
}
