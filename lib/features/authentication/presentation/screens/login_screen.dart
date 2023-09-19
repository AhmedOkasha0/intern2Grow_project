import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intern2grow/features/authentication/presentation/widgets/appbar.dart';
import 'package:intern2grow/features/authentication/presentation/widgets/custom_elevated_button.dart';
import 'package:intern2grow/features/authentication/presentation/widgets/custom_textformfield.dart';
import 'package:intern2grow/features/authentication/presentation/widgets/intern_logo_widget.dart';
import 'package:intern2grow/config/theme/text_style.dart';
import 'package:intern2grow/core/utils/app_colors.dart';
import 'package:intern2grow/core/utils/app_constatns.dart';
import 'package:intern2grow/core/utils/app_strings.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController userName = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
              Text(AppStrings.loginInYourAccount,
                  style: TextStyles.textStyle20.copyWith(fontSize: 20.h)),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.all(22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.userName,
                      style: TextStyles.textStyle14.copyWith(
                          fontSize: 14.sp, color: AppColors.titleColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 44.h,
                      child: CustomTextformfield(
                          controller: userName,
                          isObscureText: false,
                          hintText: AppStrings.userHintText,
                          keyboardType: TextInputType.name,
                          ontap: () {}),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Text(
                      AppStrings.password,
                      style: TextStyles.textStyle14.copyWith(
                          color: AppColors.titleColor, fontSize: 14.h),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 44.h,
                      child: CustomTextformfield(
                          controller: passwordController,
                          isObscureText: true,
                          hintText: AppStrings.passwordHintText,
                          keyboardType: TextInputType.name,
                          ontap: () {}),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(IconAssets.checkIcon)),
                        Text(
                          AppStrings.rememberMe,
                          style: TextStyles.textStyle14.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            AppStrings.forgotPassword,
                            style: TextStyles.textStyle14.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    SizedBox(
                      height: 44.h,
                      width: 345.w,
                      child: CustomElevatedButton(
                          ontab: () {
                            Navigator.pushNamed(
                                context, AppStrings.registerRoute);
                          },
                          text: AppStrings.login),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
