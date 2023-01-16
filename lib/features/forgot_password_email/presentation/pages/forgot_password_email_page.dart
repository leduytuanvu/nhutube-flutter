import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/features/login/presentation/pages/login_page.dart';
import 'package:nhutube/features/register/presentation/widgets/register_button_widget.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgorPasswordEmailPage extends StatelessWidget {
  const ForgorPasswordEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: theme.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: theme.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 140.h),
              Text(
                "Code has been send to leduytuanvu.work@gmail.com",
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: PinCodeTextField(
                  cursorColor: Colors.black87,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // textStyle: TextStyle(fontSize: 40.sp),
                  autoFocus: true,
                  cursorHeight: 22.h,
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  scrollPadding: EdgeInsets.zero,
                  errorTextSpace: 0,

                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(18.r),
                    fieldHeight: 55.h,
                    fieldWidth: 80.w,
                    activeFillColor: Colors.grey.shade200,
                    activeColor: Colors.grey.shade200,
                    selectedFillColor: AppColor.buttonRadient2,
                    selectedColor: AppColor.buttonRadient2,
                    inactiveColor: Colors.grey.shade200,
                    inactiveFillColor: Colors.grey.shade200,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  // backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,
                  // errorAnimationController: errorController,
                  // controller: textController,
                  onCompleted: (v) {
                    log("Completed");
                  },
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    log("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GradientButtonWidget(
                  height: 50.h,
                  title: "Verify",
                  function: () {
                    Navigator.pushNamed(context, AppPage.createNewPasswordPage);
                  },
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
