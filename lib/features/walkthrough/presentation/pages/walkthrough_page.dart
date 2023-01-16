import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_color.dart';
import 'package:nhutube/features/walkthrough/presentation/cubit/walkthrough_cubit.dart';
import 'package:nhutube/router/app_page.dart';

import '../../../../widgets/gradient_button_widget.dart';

class WalkthroughPage extends StatelessWidget {
  const WalkthroughPage({super.key});

  _indicatorItem({required int index, required BuildContext context}) {
    int currentIndex = context.read<WalkthroughCubit>().index;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColor.buttonRadient2
            : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(100.r),
      ),
      height: 8.w,
      width: currentIndex == index ? 30.w : 8.w,
    );
  }

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        AppPage.bottomBarPage,
                        (route) => false,
                      );
                    },
                    child: Container(
                      child: Lottie.asset(
                        state.lottiePath,
                        height: 250.w,
                        width: 250.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      state.title,
                      style: textTheme.titleLarge!.copyWith(height: 1.6),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _indicatorItem(index: 0, context: context),
                      const SizedBox(width: 4),
                      _indicatorItem(index: 1, context: context),
                      const SizedBox(width: 4),
                      _indicatorItem(index: 2, context: context),
                    ],
                  ),
                  SizedBox(height: 100.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: GradientButtonWidget(
                      title: context.read<WalkthroughCubit>().index == 2
                          ? "Get started"
                          : "Continue",
                      height: 50.h,
                      function: () {
                        if (context.read<WalkthroughCubit>().index == 2) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            AppPage.startPage,
                            (Route<dynamic> route) => false,
                          );
                        } else {
                          context.read<WalkthroughCubit>().changeIndex();
                        }
                      },
                    ),
                  ),
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