import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/features/register/presentation/widgets/register_button_widget.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/custom_text_field_widget.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

import '../../../../core/configs/app_lottie.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: theme.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Lottie.asset(
                AppLottie.walkthrough1,
                height: 250.w,
                width: 250.w,
              ),
              Text(
                "Create your account",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const CustomTextFieldWidget(
                  icon: Icon(
                    Icons.email,
                    color: Colors.black38,
                  ),
                  hintText: "Email",
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const CustomTextFieldWidget(
                  icon: Icon(
                    Icons.password,
                    color: Colors.black38,
                  ),
                  isPassword: true,
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.scale(
                    scale: 1,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                      fillColor: MaterialStateProperty.all(
                        AppColor.buttonRadient2,
                      ),
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GradientButtonWidget(
                  height: 50.h,
                  title: "Sign up",
                  function: () {},
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(child: Divider()),
                    SizedBox(width: 8.w),
                    Text(
                      "Or coppy with",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: Colors.black26,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    const Expanded(child: Divider()),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const RegisterButtonWidget(
                    icon: Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 18.w),
                  const RegisterButtonWidget(
                    icon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 18.w),
                  const RegisterButtonWidget(
                    icon: Icon(Icons.apple),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?  ",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(
                        AppPage.signInPage,
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: AppColor.buttonRadient2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
