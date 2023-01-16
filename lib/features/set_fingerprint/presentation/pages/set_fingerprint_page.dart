import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/widgets/gradient_button_widget.dart';

class SetFingerprintPage extends StatefulWidget {
  const SetFingerprintPage({super.key});

  @override
  State<SetFingerprintPage> createState() => _SetFingerprintPageState();
}

class _SetFingerprintPageState extends State<SetFingerprintPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    // var textController = TextEditingController();
    // AnimationController controller =
    //     AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // Animation<double> curve =
    //     CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.backgroundColor,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Set Your Fingerprint",
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
                    "Add a fingerprint to make your account more secure",
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 60.h),
                Icon(
                  Icons.fingerprint,
                  size: 220.sp,
                  color: AppColor.buttonRadient2,
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: EdgeInsets.all(16.0.w),
                  child: Text(
                    "Please put your finger on the fingerprint scanner to get started",
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: GradientButtonWidget(
                          height: 50.h,
                          title: "Skip",
                          function: () {},
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
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
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)
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
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(height: 50.h),
                                                        Icon(
                                                          Icons.account_circle,
                                                          size: 120.sp,
                                                          color: AppColor
                                                              .buttonRadient3,
                                                        ),
                                                        SizedBox(height: 28.h),
                                                        Text(
                                                          "Congratolations!",
                                                          style: theme.textTheme
                                                              .bodyMedium!
                                                              .copyWith(
                                                            color: AppColor
                                                                .buttonRadient3,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                            20.w,
                                                          ),
                                                          child: Text(
                                                            "Your account is ready to use. You will be redirected to the home page in a few seconds",
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium!
                                                                .copyWith(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
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
