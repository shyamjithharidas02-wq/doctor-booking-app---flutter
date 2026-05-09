import 'package:doctor_booking_app/core/theme/app_themes/app_sizes.dart';
import 'package:doctor_booking_app/core/theme/app_themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/common_widgets/primary_back_button.dart';
import '../../../../core/theme/app_themes/app_colors.dart';

class LocationSearchPage extends StatefulWidget {
  const LocationSearchPage({super.key});

  @override
  State<LocationSearchPage> createState() => _LocationSearchPageState();
}

class _LocationSearchPageState extends State<LocationSearchPage> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
        title: const Text("Enter Your Location"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceMd),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const SizedBox(height: AppSizes.spaceLg),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: AppColors.black,
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    color: AppColors.grey,
                    fontWeight: .w400,
                    fontSize: AppSizes.lg,
                  ),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.lg,
                            vertical: AppSizes.lg,
                          ),
                          child: GestureDetector(
                            onTap: () => _searchController.clear(),
                            child: const FaIcon(
                              FontAwesomeIcons.circleXmark,
                              color: AppColors.primary,
                              size: AppSizes.iconMd,
                            ),
                          ),
                        )
                      : null,
                ),
                style: AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                  // letterSpacing: -1,
                ),
              ),
              const SizedBox(height: AppSizes.spaceLg),
              Row(
                spacing: AppSizes.md,
                children: [
                  const Icon(
                    CupertinoIcons.location_fill,
                    size: AppSizes.iconLg,
                    color: AppColors.primary,
                  ),
                  Text(
                    "Use my current location",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.spaceSm),
              const Divider(),
              const SizedBox(height: AppSizes.spaceSm),
              Text(
                "SEARCH RESULT",
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.grey,
                  fontWeight: .w600,
                ),
              ),
              const SizedBox(height: AppSizes.spaceSm),

              Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    spacing: AppSizes.spaceSm,
                    children: [
                      const Icon(
                        CupertinoIcons.location_fill,
                        size: AppSizes.iconSm,
                        color: AppColors.primary,
                      ),
                      Text(
                        "Mane Avenue",
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "8502 Preston Rd. Ingl..",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
