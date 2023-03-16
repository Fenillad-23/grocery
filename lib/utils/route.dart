import 'package:get/get.dart';
import 'package:grocery/screens/groceryinfoscreen.dart';
import 'package:grocery/screens/homescreen.dart';
import 'package:grocery/screens/searchgrocery.dart';
import 'package:grocery/screens/sign_in.dart';
import '../screens/forgot_password/forgotpassword.dart';
import '../screens/forgot_password/otp_verificationscreen.dart';
import '../screens/forgot_password/resetpassword.dart';
import '../screens/sign_up.dart';
import '../screens/spalsh_screen.dart';

abstract class RouteGenerator {
  static const String splashscreen = '/splashscreen';
  static const String loginscreen = '/loginscreen';
  static const String signupscreen = '/signupscreen';
  static const String forgotpasswordscreen = '/forgotpasswordscreen';
  static const String otpscreen = '/otpscreen';
  static const String homescreen = '/homescreen';
  static const String resetpasswordscreen = '/resetpasswordscreen';
  static const String search = '/search';
  static const String groceryInfo = '/GroceryInfo';

  static List<GetPage> pages = [
    GetPage(
      name: RouteGenerator.splashscreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteGenerator.loginscreen,
      page: () => const Login(),
    ),
    GetPage(
      name: RouteGenerator.signupscreen,
      page: () => const Signup(),
    ),
    GetPage(
      name: RouteGenerator.forgotpasswordscreen,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: RouteGenerator.forgotpasswordscreen,
      page: () => const OtpVerification(),
    ),
    GetPage(
      name: RouteGenerator.otpscreen,
      page: () => const OtpVerification(),
    ),
    GetPage(
      name: RouteGenerator.resetpasswordscreen,
      page: () => const Resetpassword(),
    ),
    GetPage(
      name: RouteGenerator.homescreen,
      page: () => const Home(),
    ),
    GetPage(
      name: RouteGenerator.search,
      page: () => const Search(),
    ),
    GetPage(
      name: RouteGenerator.groceryInfo,
      page: () => const GroceryInfo(),
    )
  ];
}
