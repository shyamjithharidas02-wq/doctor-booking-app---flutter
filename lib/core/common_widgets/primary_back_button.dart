import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_themes/app_colors.dart';
import '../theme/app_themes/app_sizes.dart';

class PrimaryBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const PrimaryBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap ?? () => context.pop(),
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(8),
        side: const BorderSide(color: AppColors.lightGrey),
        shape: const CircleBorder(),
      ),
      icon: const Icon(
        Icons.arrow_back_outlined,
        color: AppColors.black,
        size: AppSizes.iconLg,
      ),
    );
  }
}
