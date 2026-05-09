import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/features/permissions/presentation/widgets/permission_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common_widgets/primary_button.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_themes/app_sizes.dart';
import '../widgets/permission_sub_title.dart';
import '../widgets/permission_text_button.dart';
import '../widgets/permission_title.dart';

class LocationPermissionPage extends StatelessWidget {
  const LocationPermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          const PermissionIcon(icon: FontAwesomeIcons.locationDot),
          const SizedBox(height: AppSizes.spaceXl),
          const PermissionTitle(title: AppStrings.locationTitle),
          const SizedBox(height: AppSizes.spaceMd),
          const PermissionSubTitle(subTitle: AppStrings.locationSubTitle),
          const SizedBox(height: AppSizes.spaceLg),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceMd),
            child: PrimaryButton(
              onTap: () {
                // TODO: Access permission
              },
              buttonText: AppStrings.locationBtnText,
            ),
          ),
          const SizedBox(height: AppSizes.spaceMd),

          PermissionTextButton(
            buttonText: AppStrings.locationManually,
            onTap: () => context.push(RouteNames.manualLocationSearch),
          ),
        ],
      ),
    );
  }
}
