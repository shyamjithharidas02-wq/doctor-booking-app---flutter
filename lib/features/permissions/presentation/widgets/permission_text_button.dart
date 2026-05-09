import 'package:flutter/material.dart';

import '../../../../core/theme/app_themes/app_colors.dart';

class PermissionTextButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;

  const PermissionTextButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        overlayColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(color: AppColors.secondary),
      ),
    );
  }
}
