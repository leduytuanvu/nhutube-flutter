import 'package:flutter/material.dart';
import 'package:nhutube/features/create_new_password/presentation/pages/create_new_password_page.dart';
import 'package:nhutube/features/create_new_pin/presentation/pages/create_new_pin_page.dart';
import 'package:nhutube/features/fill_profile/presentation/pages/fill_profile_page.dart';
import 'package:nhutube/features/forgot_password/presentation/pages/forgot_password_page.dart';
import 'package:nhutube/features/forgot_password_sms.dart/presentation/pages/forgot_password_sms_page.dart';
import 'package:nhutube/features/home/presentation/pages/home_page.dart';
import 'package:nhutube/features/login/presentation/pages/login_page.dart';
import 'package:nhutube/features/notification/presentation/pages/notification_page.dart';
import 'package:nhutube/features/register/presentation/pages/register_page.dart';
import 'package:nhutube/features/set_fingerprint/presentation/pages/set_fingerprint_page.dart';
import 'package:nhutube/features/start/presentation/pages/start_page.dart';
import 'package:nhutube/router/app_page.dart';
import '../features/bottom_bar/presentation/pages/bottom_bar_page.dart';
import '../features/forgot_password_email/presentation/pages/forgot_password_email_page.dart';
import '../features/search/presentation/pages/search_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';
import '../features/video_detail/presentation/pages/video_detail_page.dart';

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
      case AppPage.forgotPasswordEmailPage:
        return MaterialPageRoute(
          builder: (_) => const ForgorPasswordEmailPage(),
        );
      case AppPage.fillProfilePage:
        return MaterialPageRoute(builder: (_) => const FillProfilePage());
      case AppPage.createNewPinPage:
        return MaterialPageRoute(builder: (_) => const CreateNewPinPage());
      case AppPage.setFingerprintPage:
        return MaterialPageRoute(builder: (_) => const SetFingerprintPage());
      case AppPage.forgotPasswordPage:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      case AppPage.forgotPasswordSmsPage:
        return MaterialPageRoute(builder: (_) => const ForgorPasswordSmsPage());
      case AppPage.createNewPasswordPage:
        return MaterialPageRoute(builder: (_) => const CreateNewPasswordPage());
      case AppPage.bottomBarPage:
        return MaterialPageRoute(builder: (_) => const BottomBarPage());
      case AppPage.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppPage.notificationPage:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case AppPage.searchPage:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case AppPage.videoDetailPage:
        return MaterialPageRoute(builder: (_) => const VideoDetailPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
