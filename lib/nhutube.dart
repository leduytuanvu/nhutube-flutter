import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nhutube/features/bottom_bar/presentation/cubit/bottom_bar_cubit.dart';
import 'package:nhutube/features/fill_profile/presentation/cubit/fill_profile_cubit.dart';
import 'package:nhutube/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:nhutube/features/splash/presentation/pages/splash_page.dart';
import 'package:nhutube/features/start/presentation/cubit/start_cubit.dart';
import 'package:nhutube/features/walkthrough/presentation/cubit/walkthrough_cubit.dart';
import 'package:nhutube/localization/app_localization.dart';
import 'package:nhutube/localization/cubit/localization_cubit.dart';
import 'package:nhutube/router/app_router.dart';
import 'package:nhutube/theme/app_theme.dart';
import 'features/splash/presentation/cubit/splash_cubit.dart';
import 'theme/cubit/theme_cubit.dart';

class Nhutube extends StatelessWidget {
  const Nhutube({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit()..getSavedTheme(),
        ),
        BlocProvider(
          create: (context) => StartCubit(),
        ),
        BlocProvider(
          create: (context) => SplashCubit(),
        ),
        BlocProvider(
          create: (context) => LocalizationCubit()..getSavedLanguage(),
        ),
        BlocProvider(
          create: (context) => WalkthroughCubit()..init(),
        ),
        BlocProvider(
          create: (context) => ForgotPasswordCubit(),
        ),
        BlocProvider(
          create: (context) => FillProfileCubit(),
        ),
        BlocProvider(
          create: (context) => BottomBarCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, stateTheme) {
              return BlocBuilder<LocalizationCubit, LocalizationState>(
                builder: (context, stateLocalization) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    locale: stateLocalization is LocalizationLoaded
                        ? stateLocalization.locale
                        : const Locale('en'),
                    supportedLocales: const [Locale('vi'), Locale('en')],
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate
                    ],
                    localeResolutionCallback: (deviceLocale, supportedLocales) {
                      for (var locale in supportedLocales) {
                        if (deviceLocale != null &&
                            deviceLocale.languageCode == locale.languageCode) {
                          return deviceLocale;
                        }
                      }
                      return supportedLocales.first;
                    },
                    theme: stateTheme is ThemeLoaded
                        ? stateTheme.theme
                        : darkTheme,
                    home: const SplashPage(),
                    // home: const SetFingerprintPage(),
                    scrollBehavior: const ScrollBehavior().copyWith(
                      overscroll: false,
                    ),
                    onGenerateRoute: AppRouter().onGenerateRoute,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
