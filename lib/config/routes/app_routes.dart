import 'package:flutter/material.dart';
import 'package:intern2grow/feautures/authentication/presentation/screens/login_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ("/"):
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
    }
    return null;
  }
}
