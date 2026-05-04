import 'package:doctor_booking_app/core/constants/app_strings.dart';
import 'package:doctor_booking_app/core/constants/asset_path.dart';

class OnboardData {
  final String imagePath;
  final String title;
  final String highlight;
  final String description;

  const OnboardData({
    required this.imagePath,
    required this.title,
    required this.highlight,
    required this.description,
  });
}

final List<OnboardData> onboardPages = const [
  OnboardData(
    imagePath: AssetPath.onboardImage1,
    title: AppStrings.title1,
    highlight: AppStrings.highlight1,
    description: AppStrings.subtitle1,
  ),
  OnboardData(
    imagePath: AssetPath.onboardImage2,
    title: AppStrings.title2,
    highlight: AppStrings.highlight2,
    description: AppStrings.subtitle2,
  ),
  OnboardData(
    imagePath: AssetPath.onboardImage3,
    title: AppStrings.title3,
    highlight: AppStrings.highlight3,
    description: AppStrings.subtitle3,
  ),
];
