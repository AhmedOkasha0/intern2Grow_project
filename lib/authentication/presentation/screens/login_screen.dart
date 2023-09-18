import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern2grow/authentication/presentation/widgets/appbar.dart';
import 'package:intern2grow/authentication/presentation/widgets/intern_logo_widget.dart';
import 'package:intern2grow/config/theme/text_style.dart';
import 'package:intern2grow/core/utils/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                height: 240.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24.sp))),
                child: Stack(
                  children: const [
                    CustomAppbar(),
                    Positioned(top: 130, left: 130, child: InternContanier())
                  ],
                )),
            SizedBox(
              height: 25.h,
            ),
            const Text(
              AppStrings.loginInYourAccount,
              style: TextStyles.textStyle20,
            )
          ],
        ),
      ),
    );
  }
}
