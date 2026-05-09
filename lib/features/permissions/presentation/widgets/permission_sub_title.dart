import 'package:flutter/material.dart';

import '../../../../core/theme/app_themes/app_colors.dart';
import '../../../../core/theme/app_themes/app_text_styles.dart';

class PermissionSubTitle extends StatelessWidget {
  final String subTitle;
  const PermissionSubTitle({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      textAlign: .center,
      style: AppTextStyles.bodySmall.copyWith(
        color: AppColors.grey,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
