import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/features/onboard/cubit/onboard_cubit.dart';
import 'package:doctor_booking_app/features/onboard/cubit/onboard_state.dart';
import 'package:doctor_booking_app/features/onboard/presentation/models/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_themes/app_colors.dart';
import '../../../../../core/theme/app_themes/app_text_styles.dart';
import 'curved_bottom_clipper.dart';

class OnboardTopSection extends StatelessWidget {
  const OnboardTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardCubit, OnboardState>(
      buildWhen: (prev, curr) => prev.currentIndex != curr.currentIndex,
      builder: (context, state) {
        final page = onboardPages[state.currentIndex];

        return Expanded(
          flex: 4,
          child: ClipPath(
            clipper: CurvedBottomClipper(),
            child: Stack(
              children: [
                // Background fills full expanded area
                Positioned.fill(
                  child: Container(
                    color: AppColors.lightGreyShade,
                    width: double.infinity,
                  ),
                ),

                // Image centered + bottom-aligned
                Positioned.fill(
                  child: SizedBox(
                    width: double.infinity,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.15, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        );
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          page.imagePath,
                          key: ValueKey(page.imagePath),
                          height: 420, // todo: add mediaquery here
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),

                // Skip button stays on top
                if (state.currentIndex != onboardPages.length - 1)
                  Positioned(
                    right: AppSizes.spaceLg,
                    top: AppSizes.spaceXxl,
                    child: TextButton(
                      onPressed: () {
                        context.read<OnboardCubit>().gotoLastPage(
                          onboardPages.length,
                        );
                      },
                      child: Text(
                        "Skip",
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
