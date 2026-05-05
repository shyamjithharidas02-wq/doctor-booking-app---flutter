import 'package:flutter/material.dart';

import '../../../../core/theme/app_themes/app_colors.dart';
import '../../../../core/theme/app_themes/app_sizes.dart';

class SocialIconWidget extends StatelessWidget {
  final String icon;
  final Function()? onTap;

  const SocialIconWidget({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSizes.spaceXxl,
        padding: const .all(AppSizes.spaceMd),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.lightGrey),
        ),
        child: Image.asset(icon),
      ),
    );
  }
}
