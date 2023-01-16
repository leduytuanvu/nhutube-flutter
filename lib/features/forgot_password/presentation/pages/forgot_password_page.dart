import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_lottie.dart';
import 'package:nhutube/router/app_page.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    var textController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Forgot Password",
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
                Lottie.asset(
                  AppLottie.walkthrough1,
                  height: 250.w,
                  width: 250.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "Select which contact details should we use to reset your password",
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppPage.forgotPasswordSmsPage,
                      );
                    },
                    child: Container(
                      height: 110.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 22.w),
                          Container(
                            height: 70.h,
                            width: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.pink.shade200,
                            ),
                            child: const Icon(
                              Icons.message,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "via SMS",
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.w),
                              Text(
                                "+84961191732",
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.of(context)
                          .pushNamed(AppPage.forgotPasswordEmailPage);
                    }),
                    child: Container(
                      height: 110.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 22.w),
                          Container(
                            height: 70.h,
                            width: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.pink.shade200,
                            ),
                            child: const Icon(
                              Icons.message,
                              color: Colors.pink,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "via Email",
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.w),
                              Text(
                                "leduytuanvu.work@gmail.com",
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
