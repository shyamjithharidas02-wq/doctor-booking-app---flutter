import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_themes/app_colors.dart';
import '../../../../../core/theme/app_themes/app_text_styles.dart';
import '../../../cubit/onboard_cubit.dart';
import '../../../cubit/onboard_state.dart';
import '../../models/onboard_model.dart';

class OnboardBottomSection extends StatelessWidget {
  const OnboardBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardCubit, OnboardState>(
      buildWhen: (prev, curr) => prev.currentIndex != curr.currentIndex,
      builder: (context, state) {
        final page = onboardPages[state.currentIndex];

        return Expanded(
          flex: 2,
          child: Padding(
            padding: const .symmetric(horizontal: AppSizes.spaceLg),
            child: Column(
              children: [
                const SizedBox(height: AppSizes.spaceXl),

                // Animated title + highlight
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(
                        scale: Tween(begin: 0.98, end: 1.0).animate(animation),
                        child: child,
                      ),
                    );
                  },
                  child: Column(
                    key: ValueKey(state.currentIndex), // ← triggers animation
                    children: [
                      Text(
                        page.title,
                        style: AppTextStyles.heading1.copyWith(
                          letterSpacing: -1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        page.highlight,
                        style: AppTextStyles.heading1.copyWith(
                          letterSpacing: -1,
                          color: AppColors.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Animated description
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 350),
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: Text(
                    page.description,
                    key: ValueKey('desc_${state.currentIndex}'),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: AppSizes.spaceXl),

                // Dots + Next button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Dots
                    Row(
                      children: List.generate(onboardPages.length, (index) {
                        final isActive = index == state.currentIndex;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 8,
                          width: isActive ? 18 : 8,
                          decoration: BoxDecoration(
                            color: isActive
                                ? Colors.orange
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }),
                    ),

                    // Next button
                    Container(
                      height: AppSizes.buttonHeight,
                      width: AppSizes.buttonHeight,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.read<OnboardCubit>().nextPage(
                            onboardPages.length,
                          );
                        },
                        icon: Icon(
                          state.currentIndex == onboardPages.length - 1
                              ? Icons.check
                              : Icons.arrow_forward,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
