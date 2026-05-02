import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
}
