import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intern2grow/config/theme/text_style.dart';
import 'package:intern2grow/core/utils/app_colors.dart';
import 'package:intern2grow/core/utils/app_constatns.dart';
import 'package:intern2grow/core/utils/app_strings.dart';
import 'package:intern2grow/features/authentication/sign_up/presentation/widgets/appbar.dart';
import 'package:intern2grow/features/authentication/sign_up/presentation/widgets/custom_elevated_button.dart';
import 'package:intern2grow/features/authentication/sign_up/presentation/widgets/custom_textformfield.dart';
import 'package:intern2grow/features/authentication/sign_up/presentation/widgets/intern_logo_widget.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController userName = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailAdress = TextEditingController();
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
            height: 8.h,
          ),
          Text(
            AppStrings.creatNewAccount,
            style: TextStyles.textStyle20.copyWith(
              fontSize: 20.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(22.h),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.userName,
                    style: TextStyles.textStyle14
                        .copyWith(fontSize: 14.sp, color: AppColors.titleColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    child: CustomTextformfield(
                        validation: () {},
                        controller: userName,
                        isObscureText: false,
                        hintText: AppStrings.userHintText,
                        keyboardType: TextInputType.name,
                        ontap: () {}),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    AppStrings.emial,
                    style: TextStyles.textStyle14
                        .copyWith(fontSize: 14.sp, color: AppColors.titleColor),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    child: CustomTextformfield(
                        validation: () {},
                        controller: emailAdress,
                        isObscureText: false,
                        hintText: AppStrings.emailAdressHintText,
                        keyboardType: TextInputType.emailAddress,
                        ontap: () {}),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    AppStrings.password,
                    style: TextStyles.textStyle14
                        .copyWith(color: AppColors.titleColor, fontSize: 14.h),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    child: CustomTextformfield(
                        validation: () {},
                        controller: passwordController,
                        isObscureText: true,
                        hintText: AppStrings.passwordHintText,
                        keyboardType: TextInputType.name,
                        ontap: () {}),
                  ),
                  SizedBox(
                    height: 8.h,
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
                          AppStrings.haveProblem,
                          style: TextStyles.textStyle14.copyWith(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    width: 345.w,
                    child: CustomElevatedButton(
                        ontab: () {}, text: AppStrings.regitser),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppStrings.haveAccount,
                        style: TextStyles.textStyle14.copyWith(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      InkWell(
                        child: Text(
                          AppStrings.login,
                          style: TextStyles.textStyle14.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
