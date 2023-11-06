import 'package:flutter/material.dart';
import 'package:intern2grow/core/utils/app_colors.dart';
import 'package:intern2grow/core/utils/app_constatns.dart';

class InternContanier extends StatelessWidget {
  const InternContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 3,
          spreadRadius: 3,
          color: AppColors.interContenierShadow,
          offset: Offset(0, 4),
        )
      ]),
      child: Image.asset(
        AppConstants.internContanier,
      ),
    );
  }
}
