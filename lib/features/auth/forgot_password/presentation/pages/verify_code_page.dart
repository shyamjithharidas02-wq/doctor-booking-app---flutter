import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/common_widgets/primary_button.dart';
import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/common_widgets/primary_back_button.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leadingWidth: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: PrimaryBackButton(),
        ),
      ),

      body: Column(
        crossAxisAlignment: .center,
        children: [
          const SizedBox(height: AppSizes.spaceXl),
          const Text(AppStrings.verifyCode, style: AppTextStyles.heading2),
          const SizedBox(height: AppSizes.spaceXs),
          Text(
            AppStrings.verifySubText,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            AppStrings.verifyEmailPlaceholder,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSizes.spaceXl),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceMd),
            child: Pinput(
              length: 6,
              autofocus: true,
              enabled: true,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 56,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 60,
                height: 56,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.secondary),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: 60,
                height: 56,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.secondary),
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSizes.spaceXl),

          Text(
            AppStrings.resendCode,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),

          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              overlayColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            child: Text(
              AppStrings.resendCode,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.secondary,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.secondary,
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceLg),

          Padding(
            padding: const .symmetric(horizontal: AppSizes.spaceMd),
            child: PrimaryButton(
              onTap: () {
                context.push(RouteNames.newPassword);
              },
              buttonText: "Verify",
            ),
          ),
        ],
      ),
    );
  }
}
