import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/common_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common_widgets/primary_back_button.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/app_themes/app_colors.dart';
import '../../../../../core/theme/app_themes/app_sizes.dart';
import '../../../../../core/theme/app_themes/app_text_styles.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leadingWidth: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: PrimaryBackButton(),
        ),
      ),
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          const SizedBox(height: AppSizes.spaceXl),
          const Text(
            AppStrings.newPassword,
            textAlign: .center,
            style: AppTextStyles.heading2,
          ),
          const SizedBox(height: AppSizes.spaceXs),
          Text(
            AppStrings.newPasswordSubText,
            textAlign: .center,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSizes.spaceXl),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceMd),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Text(
                  AppStrings.password,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceXs),
                TextFormField(
                  obscureText: isPasswordHidden,
                  controller: _passwordController,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: AppStrings.passwordPlaceholder,
                    hintStyle: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.md,
                        horizontal: AppSizes.sm,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(
                          () => isPasswordHidden = !isPasswordHidden,
                        ),
                        child: FaIcon(
                          isPasswordHidden
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: AppSizes.iconMd,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceLg),

                Text(
                  AppStrings.confirmPassword,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceXs),
                TextFormField(
                  obscureText: isConfirmPasswordHidden,
                  controller: _confirmPasswordController,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: AppStrings.passwordPlaceholder,
                    hintStyle: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.grey,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.md,
                        horizontal: AppSizes.sm,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(
                          () => isConfirmPasswordHidden =
                              !isConfirmPasswordHidden,
                        ),
                        child: FaIcon(
                          isConfirmPasswordHidden
                              ? FontAwesomeIcons.eyeSlash
                              : FontAwesomeIcons.eye,
                          size: AppSizes.iconMd,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceXl),

                PrimaryButton(
                  onTap: () async {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => alert(),
                    );

                    await Future.delayed(const Duration(seconds: 3));

                    if (context.mounted) {
                      Navigator.pop(context); // Close alert
                      context.push(RouteNames.patientProfileCreation);
                    }
                  },
                  buttonText: AppStrings.createNewPassword,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget alert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: .circular(AppSizes.radiusMd)),
      content: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.spaceSm),
          child: Column(
            mainAxisSize: .min,
            children: [
              Image.asset(
                "assets/images/commons/reset.jpg",
                height: AppSizes.splashLogoSize,
              ),
              const SizedBox(height: AppSizes.spaceXl),

              Text("Password Changed", style: AppTextStyles.heading2),
              const SizedBox(height: AppSizes.spaceMd),
              Text(
                "Your password has been changed successfully.",
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceLg),
              const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
