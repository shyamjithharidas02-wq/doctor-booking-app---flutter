import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/features/onboard/cubit/onboard_cubit.dart';
import 'package:doctor_booking_app/features/onboard/cubit/onboard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'widgets/onboard_main_widget.dart';

class OnboardMainPage extends StatelessWidget {
  const OnboardMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardCubit(),
        child: BlocListener<OnboardCubit, OnboardState>(
          listener: (context, state) {
            if (state.isCompleted) {
              context.goNamed(RouteNames.home);
            }
          },
          child: const OnboardMainWidget(),
        ),
      ),
    );
  }
}
