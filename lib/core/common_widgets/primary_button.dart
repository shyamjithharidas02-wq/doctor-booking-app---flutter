import 'package:flutter/material.dart';

import '../theme/app_themes/app_sizes.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.buttonHeight,
      child: ElevatedButton(onPressed: onTap, child: Text(buttonText)),
    );
  }
}
