import 'package:flutter/material.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/asset_path.dart';
import '../../../../../core/theme/app_themes/app_colors.dart';
import '../../../../../core/theme/app_themes/app_sizes.dart';
import '../../../../../core/theme/app_themes/app_text_styles.dart';

class SignupTopSection extends StatelessWidget {
  const SignupTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.8,
      width: .infinity,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.25,
          image: AssetImage(AssetPath.authScreenImage),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.spaceMd),

            Text(
              AppStrings.createAccount,
              style: AppTextStyles.heading2.copyWith(color: AppColors.white),
            ),
            const SizedBox(height: AppSizes.spaceMd),

            Text(
              AppStrings.createAccountSub,
              textAlign: .center,
              style: AppTextStyles.bodySmall.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
