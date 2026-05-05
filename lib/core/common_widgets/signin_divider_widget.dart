import 'package:flutter/material.dart';

import '../constants/app_strings.dart';
import '../theme/app_themes/app_colors.dart';
import '../theme/app_themes/app_text_styles.dart';

class SignInDividerWidget extends StatelessWidget {
  const SignInDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.lightGrey,
            thickness: 1,
            indent: 40,
            endIndent: 10,
          ),
        ),
        Text(AppStrings.orSignInWith, style: AppTextStyles.bodySmall),
        Expanded(
          child: Divider(
            color: AppColors.lightGrey,
            thickness: 1,
            indent: 10,
            endIndent: 40,
          ),
        ),
      ],
    );
  }
}
