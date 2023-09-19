import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern2grow/config/theme/text_style.dart';
import 'package:intern2grow/core/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function ontab;
  final String text;
  const CustomElevatedButton(
      {super.key, required this.ontab, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => ontab,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.w)),
          backgroundColor: AppColors.buttonBlu),
      child: Text(
        text,
        style: TextStyles.textStyle14.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
