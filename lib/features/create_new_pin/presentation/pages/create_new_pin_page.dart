import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreateNewPinPage extends StatelessWidget {
  const CreateNewPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.2,
          title: Text(
            "Create New Pin",
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.all(16.0.w),
                  child: Text(
                    "Add a PIN number to make your account more secure",
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h),
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
                      fieldHeight: 55,
                      fieldWidth: 80,
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
                    controller: textController,
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
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: GradientButtonWidget(
                    height: 50.h,
                    title: "Continue",
                    function: () {
                      Navigator.of(context).pushNamed(
                        AppPage.setFingerprintPage,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
