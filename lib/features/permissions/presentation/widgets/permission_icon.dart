import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theme/app_themes/app_colors.dart';
import '../../../../core/theme/app_themes/app_sizes.dart';

class PermissionIcon extends StatelessWidget {
  final FaIconData icon;
  const PermissionIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: AppSizes.circleSize,
      backgroundColor: AppColors.lightGrey,
      child: FaIcon(icon, size: AppSizes.iconXxl, color: AppColors.primary),
    );
  }
}
