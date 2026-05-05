import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/app/router/route_path.dart';
import 'package:doctor_booking_app/features/home/presentation/pages/home_page.dart';
import 'package:doctor_booking_app/features/login/presentation/pages/login_page.dart';
import 'package:doctor_booking_app/features/onboard/presentation/pages/onboard_main_page.dart';
import 'package:doctor_booking_app/features/signup/presentation/pages/signup_page.dart';
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
    ],

    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('Page not found'))),
  );
}
