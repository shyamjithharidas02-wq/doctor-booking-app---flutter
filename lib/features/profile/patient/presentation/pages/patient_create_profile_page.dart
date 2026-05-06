import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/common_widgets/primary_button.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/common_widgets/primary_back_button.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/app_themes/app_colors.dart';
import '../../../../../core/theme/app_themes/app_sizes.dart';

class PatientCreateProfilePage extends StatefulWidget {
  const PatientCreateProfilePage({super.key});

  @override
  State<PatientCreateProfilePage> createState() =>
      _PatientCreateProfilePageState();
}

class _PatientCreateProfilePageState extends State<PatientCreateProfilePage> {
  final List<String> gender = ['Male', 'Female', 'Other'];

  String? selectedGender;

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
        children: [
          const SizedBox(height: AppSizes.spaceXl),
          const Text(
            AppStrings.createProfileTitle,
            style: AppTextStyles.heading2,
          ),
          const SizedBox(height: AppSizes.spaceSm),
          Text(
            AppStrings.createProfleSubTitle,
            textAlign: .center,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSizes.spaceXl),

          Stack(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.lightGreyShade,

                child: const Icon(
                  CupertinoIcons.person,
                  color: AppColors.black,
                  size: 50,
                ),
              ),

              const Positioned(
                bottom: 10,
                right: 5,
                child: CircleAvatar(
                  radius: 14,
                  child: FaIcon(
                    FontAwesomeIcons.penToSquare,
                    color: AppColors.white,
                    size: 12,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
            child: Column(
              crossAxisAlignment: .start,
              children: [
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
                    hintText: AppStrings.profileNamePlaceholder,
                    hintStyle: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceMd),

                Text(
                  AppStrings.phoneNumberLabel,
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
                    hintText: AppStrings.phoneNumberPlaceholder,
                    hintStyle: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceMd),

                Text(
                  AppStrings.genderLabel,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceXs),
                DropdownButtonFormField<String>(
                  initialValue: selectedGender,
                  hint: Text(
                    "Select",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  items: gender.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  onChanged: (value) {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.grey,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceXl),

                PrimaryButton(
                  onTap: () {
                    context.push(RouteNames.notificationPermission);
                  },
                  buttonText: AppStrings.createProfile,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
