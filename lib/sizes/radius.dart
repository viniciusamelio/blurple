import 'package:flutter/rendering.dart';

abstract class RadiusTokens {
  static const double xs = 2;
  static const double sm = 4;
  static const double md = 8;
  static const double lg = 12;
  static const double xl = 16;
}

abstract class RoundedBorder {
  static BorderRadius xs = BorderRadius.circular(RadiusTokens.xs);
  static BorderRadius sm = BorderRadius.circular(RadiusTokens.sm);
  static BorderRadius md = BorderRadius.circular(RadiusTokens.md);
  static BorderRadius lg = BorderRadius.circular(RadiusTokens.lg);
  static BorderRadius xl = BorderRadius.circular(RadiusTokens.xl);
}
