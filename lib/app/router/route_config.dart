import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/app/router/route_path.dart';
import 'package:doctor_booking_app/features/auth/forgot_password/presentation/pages/new_password_page.dart';
import 'package:doctor_booking_app/features/auth/forgot_password/presentation/pages/verify_code_page.dart';
import 'package:doctor_booking_app/features/home/presentation/pages/home_page.dart';
import 'package:doctor_booking_app/features/auth/login/presentation/pages/login_page.dart';
import 'package:doctor_booking_app/features/location/presentation/pages/location_search_page.dart';
import 'package:doctor_booking_app/features/onboard/presentation/pages/onboard_main_page.dart';
import 'package:doctor_booking_app/features/auth/signup/presentation/pages/signup_page.dart';
import 'package:doctor_booking_app/features/permissions/presentation/pages/location_permission_page.dart';
import 'package:doctor_booking_app/features/permissions/presentation/pages/notification_permission_page.dart';
import 'package:doctor_booking_app/features/profile/patient/presentation/pages/patient_create_profile_page.dart';
import 'package:doctor_booking_app/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePath.splash,

    routes: [
      GoRoute(
        path: RoutePath.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashPage(),
      ),

      GoRoute(
        path: RoutePath.onboard,
        name: RouteNames.onboard,
        builder: (context, state) => const OnboardMainPage(),
      ),

      GoRoute(
        path: RoutePath.login,
        name: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: RoutePath.signup,
        name: RouteNames.signup,
        builder: (context, state) => const SignupPage(),
      ),

      GoRoute(
        path: RoutePath.home,
        name: RouteNames.home,
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: RoutePath.verifyCode,
        name: RouteNames.verifyCode,
        builder: (context, state) => const VerifyCodePage(),
      ),

      GoRoute(
        path: RoutePath.newPassword,
        name: RouteNames.newPassword,
        builder: (context, state) => const NewPasswordPage(),
      ),

      GoRoute(
        path: RoutePath.patientProfileCreation,
        name: RouteNames.patientProfileCreation,
        builder: (context, state) => const PatientCreateProfilePage(),
      ),

      GoRoute(
        path: RoutePath.notificationPermission,
        name: RouteNames.notificationPermission,
        builder: (context, state) => const NotificationPermissionPage(),
      ),

      GoRoute(
        path: RoutePath.locationPermission,
        name: RouteNames.locationPermission,
        builder: (context, state) => const LocationPermissionPage(),
      ),

      GoRoute(
        path: RoutePath.manualLocationSearch,
        name: RouteNames.manualLocationSearch,
        builder: (context, state) => const LocationSearchPage(),
      ),
    ],

    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('Page not found'))),
  );
}
