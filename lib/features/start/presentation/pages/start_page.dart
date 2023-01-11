import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/core/configs/app_lottie.dart';
import 'package:nhutube/features/start/presentation/widgets/start_button_widget.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
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
                  "Let's you in",
                  style: textTheme.headlineLarge,
                ),
                SizedBox(height: 40.h),
                StartButtonWidget(
                  height: 46.h,
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  title: "Continue with facebook",
                ),
                SizedBox(height: 10.h),
                StartButtonWidget(
                  height: 46.h,
                  icon: const Icon(Icons.email, color: Colors.red),
                  title: "Continue with google",
                ),
                SizedBox(height: 10.h),
                StartButtonWidget(
                  height: 46.h,
                  icon: const Icon(Icons.apple),
                  title: "Continue with apple",
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      const Expanded(child: Divider()),
                      SizedBox(width: 8.w),
                      Text(
                        "Or",
                        style: textTheme.bodyMedium!.copyWith(
                          color: Colors.black26,
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      const Expanded(child: Divider()),
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GradientButtonWidget(
                    title: "Sign in with password",
                    function: () {
                      Navigator.of(context).pushNamed(AppPage.signInPage);
                    },
                  ),
                ),
                SizedBox(height: 34.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?  ",
                      style: textTheme.bodyMedium!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AppPage.signUpPage);
                      },
                      child: Text(
                        "Sign up",
                        style: textTheme.bodyMedium!.copyWith(
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
      ),
    );
  }
}
