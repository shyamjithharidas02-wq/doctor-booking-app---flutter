import 'package:flutter/material.dart';

import '../../../../core/theme/app_themes/app_text_styles.dart';

class PermissionTitle extends StatelessWidget {
  final String title;
  const PermissionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppTextStyles.heading2);
  }
}
