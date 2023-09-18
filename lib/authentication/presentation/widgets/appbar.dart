import 'package:flutter/material.dart';
import 'package:intern2grow/core/utils/app_constatns.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(AppConstants.appbar),
    ]);
  }
}
