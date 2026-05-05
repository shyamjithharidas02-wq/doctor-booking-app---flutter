import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/common_widgets/account_info_widget.dart';
import 'package:doctor_booking_app/core/common_widgets/primary_button.dart';
import 'package:doctor_booking_app/core/common_widgets/signin_divider_widget.dart';
import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/constants/asset_path.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../login/presentation/widgets/social_icon_widget.dart';
import '../widgets/signup_top_section.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isPasswordHidden = true;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
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

          const SignupTopSection(),

          Positioned(
            top: 180,
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
                      AppStrings.name,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceXs),
                    TextFormField(
                      controller: _nameController,
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: AppStrings.namePlaceholder,
                        hintStyle: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceMd),

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
                    const SizedBox(height: AppSizes.spaceSm),

                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {
                            // TODO: Agree terms and conditions
                          },
                        ),
                        Text(
                          AppStrings.agreeWith,
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceXs),
                        Text(
                          AppStrings.termsConditions,
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    PrimaryButton(
                      onTap: () {
                        // TODO: Sign in function
                      },
                      buttonText: AppStrings.signup,
                    ),
                    const SizedBox(height: AppSizes.spaceLg),

                    AccountInfoWidget(
                      accountInfoText: AppStrings.alreadyHaveAnAccount,
                      optionText: AppStrings.signIn,
                      onTap: () {
                        context.goNamed(RouteNames.login);
                      },
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
