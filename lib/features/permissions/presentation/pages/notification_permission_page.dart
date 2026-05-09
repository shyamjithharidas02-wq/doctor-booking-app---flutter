import 'package:doctor_booking_app/app/router/route_names.dart';
import 'package:doctor_booking_app/core/common_widgets/primary_button.dart';
import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_colors.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../widgets/permission_icon.dart';
import '../widgets/permission_sub_title.dart';
import '../widgets/permission_text_button.dart';
import '../widgets/permission_title.dart';

class NotificationPermissionPage extends StatelessWidget {
  const NotificationPermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const PermissionIcon(icon: FontAwesomeIcons.solidBell),
            const SizedBox(height: AppSizes.spaceXl),
            const PermissionTitle(title: AppStrings.enableNotification),
            const SizedBox(height: AppSizes.spaceMd),
            const PermissionSubTitle(
              subTitle: AppStrings.enableNotificationSub,
            ),
            const SizedBox(height: AppSizes.spaceLg),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceMd),
              child: PrimaryButton(
                onTap: () {
                  context.push(RouteNames.locationPermission);
                },
                buttonText: AppStrings.allowNotificationBtnText,
              ),
            ),
            const SizedBox(height: AppSizes.spaceMd),

            PermissionTextButton(
              buttonText: AppStrings.maybeLaterText,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
