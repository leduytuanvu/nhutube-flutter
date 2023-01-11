import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/features/login/presentation/pages/login_page.dart';
import 'package:nhutube/features/register/presentation/widgets/register_button_widget.dart';
import 'package:nhutube/widgets/custom_text_field_widget.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

import '../../../../core/configs/app_lottie.dart';

class ForgorPasswordPage extends StatelessWidget {
  const ForgorPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
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
                "Forgot your password",
                style: theme.textTheme.headlineLarge,
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
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GradientButtonWidget(
                  title: "SEND NEW PASSWORD",
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
                      "Or login with",
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
                      Navigator.pushReplacement<void, void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const LoginPage(),
                        ),
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
