import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern2grow/core/utils/app_colors.dart';

class CustomTextformfield extends StatelessWidget {
  final bool isObscureText;
  final Function validation;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String hintText;
  final Function ontap;
  const CustomTextformfield({
    super.key,
    required this.validation,
    required this.controller,
    required this.isObscureText,
    required this.hintText,
    required this.keyboardType,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => ontap,
      obscureText: isObscureText,
      validator: (value) => validation(),
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.w),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
      ),
    );
  }
}
