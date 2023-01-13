import 'package:flutter/material.dart';
import 'package:nhutube/features/create_new_pin/presentation/pages/create_new_pin_page.dart';
import 'package:nhutube/features/fill_profile/presentation/pages/fill_profile_page.dart';
import 'package:nhutube/features/forgot_password/presentation/pages/forgot_password_page.dart';
import 'package:nhutube/features/login/presentation/pages/login_page.dart';
import 'package:nhutube/features/register/presentation/pages/register_page.dart';
import 'package:nhutube/features/set_fingerprint/presentation/pages/set_fingerprint_page.dart';
import 'package:nhutube/features/start/presentation/pages/start_page.dart';
import 'package:nhutube/router/app_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  MaterialPageRoute onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppPage.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppPage.startPage:
        return MaterialPageRoute(builder: (_) => const StartPage());
      case AppPage.signInPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppPage.signUpPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case AppPage.forgotPasswordPage:
        return MaterialPageRoute(builder: (_) => const ForgorPasswordPage());
      case AppPage.fillProfilePage:
        return MaterialPageRoute(builder: (_) => const FillProfilePage());
      case AppPage.createNewPinPage:
        return MaterialPageRoute(builder: (_) => const CreateNewPinPage());
      case AppPage.setFingerprintPage:
        return MaterialPageRoute(builder: (_) => const SetFingerprintPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
