import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/constants/asset_path.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/features/splash/cubit/splash_cubit.dart';
import 'package:doctor_booking_app/features/splash/cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..init(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashNavigateToOnboard) {
            context.go(RouteNames.onboard);
          } else if (state is SplashNavigateToHome) {
            context.go(RouteNames.home);
          }
        },
        child: Scaffold(
          body: Center(
            child: Image.asset(
              AssetPath.splashLogo,
              height: AppSizes.splashLogoSize,
            ),
          ),
        ),
      ),
    );
  }
}
