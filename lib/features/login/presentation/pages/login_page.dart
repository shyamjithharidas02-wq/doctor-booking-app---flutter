import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/constants/asset_path.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_icon_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: AppColors.lightGreyShade),

          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: .infinity,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.25,
                image: AssetImage(AssetPath.authScreenImage),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: AppSizes.spaceXxl),
                Image.asset(
                  AssetPath.logoTransparent,
                  color: AppColors.white,
                  height: AppSizes.splashLogoSize + 20.0,
                ),
                const SizedBox(height: AppSizes.spaceXs),

                Text(
                  AppStrings.welcomeTextLogin,
                  style: AppTextStyles.heading2.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceMd),

                Text(
                  AppStrings.welcomeSubText,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 300,
            left: AppSizes.md,
            right: AppSizes.md,

            child: Padding(
              padding: const EdgeInsets.all(AppSizes.spaceMd),
              child: Container(
                padding: const EdgeInsets.all(AppSizes.spaceLg),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: .circular(AppSizes.radiusLg),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  children: [
                    Row(
                      spacing: AppSizes.spaceMd,
                      mainAxisAlignment: .center,
                      children: [
                        SocialIconWidget(
                          icon: AssetPath.appleLogo,
                          onTap: () {
                            // TODO: Apple auth
                          },
                        ),
                        SocialIconWidget(
                          icon: AssetPath.googleLogo,
                          onTap: () {
                            // TODO: Google auth
                          },
                        ),
                        SocialIconWidget(
                          icon: AssetPath.facebookLogo,
                          onTap: () {
                            // TODO: Facebook auth
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.lightGrey,
                            thickness: 1,
                            indent: 40,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          AppStrings.orSignInWith,
                          style: AppTextStyles.bodySmall,
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.lightGrey,
                            thickness: 1,
                            indent: 10,
                            endIndent: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    Text(
                      AppStrings.email,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceXs),
                    TextFormField(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: AppStrings.emailPlaceholder,
                        hintStyle: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceMd),

                    Text(
                      AppStrings.password,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceXs),
                    TextFormField(
                      obscureText: true,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: AppStrings.passwordPlaceholder,
                        hintStyle: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.grey,
                        ),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: AppSizes.md,
                            horizontal: AppSizes.sm,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.eye,
                            size: AppSizes.iconMd,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceMd),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        AppStrings.forgotPassword,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.secondary,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceXl),

                    SizedBox(
                      height: AppSizes.buttonHeight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppStrings.signIn),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    Row(
                      spacing: AppSizes.spaceSm,
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // TODO: Sign up navigation
                          },
                          child: Text(
                            AppStrings.signup,
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
