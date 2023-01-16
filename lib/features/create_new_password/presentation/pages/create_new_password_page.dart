import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/widgets/custom_text_field_widget.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

import '../../../../core/configs/app_lottie.dart';

class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Create New Password",
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
                SizedBox(height: 40.h),
                Lottie.asset(
                  AppLottie.walkthrough1,
                  height: 250.w,
                  width: 250.w,
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomTextFieldWidget(
                    icon: Icon(
                      Icons.password,
                      color: Colors.black38,
                    ),
                    isPassword: true,
                    hintText: " Password",
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
                    hintText: " Re-password",
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
                    SizedBox(width: 8.w),
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
                    title: "Continue",
                    function: () {
                      showDialog<void>(
                        context: context,
                        // barrierDismissible: false, // user must tap button!

                        builder: (BuildContext context) {
                          var size = MediaQuery.of(context).size;
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: size.height,
                                  width: size.width,
                                  color: const Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.1),
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: SizedBox(
                                    // color: Colors.pink,
                                    height: size.height * 0.6,
                                    width: size.width * 0.8,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          right: 0,
                                          child: CustomPaint(
                                            painter: DemoPainter(),
                                            // size: Size(
                                            //   size.width * 0.8,
                                            //   size.height * 0.6,
                                            // ),
                                            child: SizedBox(
                                              height: size.height * 0.6,
                                              width: size.width * 0.8,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 50.h),
                                                  Icon(
                                                    Icons.account_circle,
                                                    size: 120.sp,
                                                    color:
                                                        AppColor.buttonRadient3,
                                                  ),
                                                  SizedBox(height: 28.h),
                                                  Text(
                                                    "Congratolations!",
                                                    style: theme
                                                        .textTheme.bodyMedium!
                                                        .copyWith(
                                                      color: AppColor
                                                          .buttonRadient3,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10.h),
                                                  Padding(
                                                    padding: EdgeInsets.all(
                                                      20.w,
                                                    ),
                                                    child: Text(
                                                      "Your account is ready to use. You will be redirected to the home page in a few seconds",
                                                      style: theme
                                                          .textTheme.bodyMedium!
                                                          .copyWith(
                                                        color: Colors.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(height: 40.h),
                                                  const CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(height: 80.h),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // child: Icon(Icons.home),
                                        ),
                                        Positioned(
                                          right: 7.w,
                                          top: 6.w,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Align(
                              //   alignment: Alignment.center,
                              //   child: CustomPaint(
                              //     // painter: DemoPainter(),
                              //     size: const Size(60, 60),
                              //     // child: Container(
                              //     //   color: Colors.red,
                              //     //   height: 60.h,
                              //     //   width: 60.h,
                              //     // ),
                              //     foregroundPainter: DemoPainter(),
                              //   ),
                              // ),
                            ],
                          );
                        },
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

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color.fromARGB(255, 41, 41, 41).withOpacity(1.0);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(0, 0, size.width, size.height),
        bottomRight: Radius.circular(size.width * 0.03),
        bottomLeft: Radius.circular(size.width * 0.03),
        topLeft: Radius.circular(size.width * 0.03),
        topRight: Radius.circular(size.width * 0.03),
      ),
      paint0Fill,
    );

    // Paint paint1Stroke = Paint()
    //   ..style = PaintingStyle.fill
    //   ..strokeWidth = 2;
    // paint1Stroke.color = const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1);
    // canvas.drawOval(
    //     Rect.fromCenter(
    //       center: Offset(size.width - 4, 5),
    //       width: size.width * 0.12,
    //       height: size.width * 0.12,
    //     ),
    //     paint1Stroke);

    // Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    // paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    // canvas.drawOval(
    //     Rect.fromCenter(
    //         center: Offset(size.width * 0.7013360, size.height * 0.1036400),
    //         width: size.width * 0.05671200,
    //         height: size.height * 0.05555200),
    //     paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
