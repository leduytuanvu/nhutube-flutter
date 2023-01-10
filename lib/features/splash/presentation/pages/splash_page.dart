import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nhutube/core/configs/app_lottie.dart';
import 'package:nhutube/core/configs/app_string.dart';
import 'package:nhutube/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:nhutube/features/walkthrough/presentation/pages/walkthrough_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  _bodyText({String? text, BuildContext? context}) {
    return Scaffold(
      backgroundColor: Theme.of(context!).backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Text(
            text!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }

  _bodyColumn({BuildContext? context}) {
    return Scaffold(
      backgroundColor: Theme.of(context!).backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nhutube",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 50.h),
              Lottie.asset(
                AppLottie.loading,
                height: 30.w,
                width: 30.w,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..delay(),
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          if (state is SplashInitial) {
            return _bodyText(text: AppString.appName, context: context);
          } else if (state is SplashError) {
            return _bodyText(text: state.message, context: context);
          } else if (state is SplashLoading) {
            return _bodyColumn(context: context);
          } else {
            return const WalkthroughPage();
          }
        },
      ),
    );
  }
}
