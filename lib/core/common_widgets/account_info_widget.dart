import 'package:flutter/material.dart';

import '../theme/app_themes/app_colors.dart';
import '../theme/app_themes/app_sizes.dart';
import '../theme/app_themes/app_text_styles.dart';

class AccountInfoWidget extends StatelessWidget {
  final String accountInfoText;
  final String optionText;
  final VoidCallback onTap;

  const AccountInfoWidget({
    super.key,
    required this.accountInfoText,
    required this.optionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSizes.spaceSm,
      mainAxisAlignment: .center,
      children: [
        Text(
          accountInfoText,
          style: AppTextStyles.bodySmall.copyWith(color: AppColors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            optionText,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
