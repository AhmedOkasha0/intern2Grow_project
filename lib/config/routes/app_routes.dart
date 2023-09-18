import 'package:flutter/material.dart';
import 'package:intern2grow/authentication/presentation/screens/login_screen.dart';

class AppRouter{
  static Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case ("/"):
      return MaterialPageRoute(builder: (context) => const LoginScreen(),);
    }

  }
}