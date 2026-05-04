import 'package:flutter/material.dart';

import 'onboard_bottom_section.dart';
import 'onboard_top_section.dart';

class OnboardMainWidget extends StatelessWidget {
  const OnboardMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Column(
        children: [
          // ── TOP SECTION: curved bg + animated image ──
          OnboardTopSection(),

          // ── BOTTOM SECTION: animated text + dots + button ──
          OnboardBottomSection(),
        ],
      ),
    );
  }
}
