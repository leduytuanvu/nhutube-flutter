import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/features/walkthrough/presentation/cubit/walkthrough_cubit.dart';

import '../../../../widgets/gradient_button_widget.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({super.key});

  @override
  State<WalkthroughPage> createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  // _indicator(int index) {
  //   return GestureDetector(
  //     onTap: () {
  //       // if (index == 2) {
  //       //   setState(() {
  //       //     _index = index;
  //       //     _titleButton = "GET STARTED";
  //       //   });
  //       // } else if (index == 0 || index == 1) {
  //       //   setState(() {
  //       //     _index = index;
  //       //     _titleButton = "NEXT";
  //       //   });
  //       // }
  //     },
  //     child: AnimatedContainer(
  //       duration: const Duration(milliseconds: 300),
  //       decoration: BoxDecoration(
  //         color:
  //             _index == index ? AppColor.buttonRadient2 : Colors.grey.shade300,
  //         borderRadius: BorderRadius.circular(5.r),
  //       ),
  //       height: 8.h,
  //       width: _index == index ? 40.w : 14.w,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: BlocBuilder<WalkthroughCubit, WalkthroughState>(
          builder: (context, state) {
            if (state is WalkthroughLoading) {
              return const CircularProgressIndicator();
            } else if (state is WalkthroughLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Lottie.asset(
                      state.lottiePath,
                      height: 250.w,
                      width: 250.w,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      state.title,
                      style: textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     _indicator(0),
                  //     sizedBoxHor(4.w),
                  //     _indicator(1),
                  //     sizedBoxHor(4.w),
                  //     _indicator(2),
                  //   ],
                  // ),
                  SizedBox(height: 80.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: GradientButtonWidget(
                      title: "_titleButton",
                      height: 46.h,
                      function: () {
                        context.read<WalkthroughCubit>().changeIndex();
                        // if (_index == 0) {
                        //   setState(() {
                        //     _index++;
                        //     _titleButton = "CONTINUE";
                        //   });
                        // } else if (_index == 1) {
                        //   setState(() {
                        //     _index++;
                        //     _titleButton = "GET STARTED";
                        //   });
                        // } else if (_index == 2) {
                        //   Navigator.pushAndRemoveUntil(
                        //     (context),
                        //     MaterialPageRoute(
                        //       builder: (context) => const LoginPage(),
                        //     ),
                        //     (route) => false,
                        //   );
                        // }
                      },
                    ),
                  ),
                  // Text("Theme : ${theme.isDart ? 'DARK' : 'LIGHT'}"),
                ],
              );
            } else if (state is WalkthroughError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}


// Text(
                //   "Nhutube",
                //   style: Theme.of(context).textTheme.titleMedium,
                // ),
                // Text(
                //   "home".tr(context),
                //   style: Theme.of(context).textTheme.titleMedium,
                // ),
                // GradientButtonWidget(
                //   title: "DARK THEME",
                //   function: () {
                //     context.read<ThemeCubit>().changeTheme("dark");
                //   },
                // ),
                // GradientButtonWidget(
                //   title: "LIGHT THEME",
                //   function: () {
                //     context.read<ThemeCubit>().changeTheme("light");
                //   },
                // ),
                // GradientButtonWidget(
                //   title: "VN",
                //   function: () {
                //     context.read<LocalizationCubit>().changeLanguage("vn");
                //   },
                // ),
                // GradientButtonWidget(
                //   title: "US",
                //   function: () {
                //     context.read<LocalizationCubit>().changeLanguage("en");
                //   },
                // ),