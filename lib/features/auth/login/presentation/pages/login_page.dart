import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/constants/asset_path.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common_widgets/account_info_widget.dart';
import '../../../../../core/common_widgets/primary_button.dart';
import '../../../../../core/common_widgets/signin_divider_widget.dart';
import '../widgets/social_icon_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordHidden = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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

                    const SignInDividerWidget(),
                    const SizedBox(height: AppSizes.spaceLg),

                    Text(
                      AppStrings.email,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceXs),
                    TextFormField(
                      controller: _emailController,
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
                    const SizedBox(height: AppSizes.spaceMd),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => context.push(RouteNames.verifyCode),
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
                    ),
                    const SizedBox(height: AppSizes.spaceXl),

                    PrimaryButton(
                      onTap: () {
                        context.push(RouteNames.patientProfileCreation);
                      },
                      buttonText: AppStrings.signIn,
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    //
                    AccountInfoWidget(
                      accountInfoText: AppStrings.dontHaveAnAccount,
                      optionText: AppStrings.signup,
                      onTap: () => context.push(RouteNames.signup),
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
