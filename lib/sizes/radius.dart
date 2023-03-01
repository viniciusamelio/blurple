import 'package:flutter/rendering.dart';

abstract class Radius {
  static const double xs = 2;
  static const double sm = 4;
  static const double md = 8;
  static const double lg = 12;
  static const double xl = 16;
}

abstract class RoundedBorder {
  static BorderRadius xs = BorderRadius.circular(Radius.xs);
  static BorderRadius sm = BorderRadius.circular(Radius.sm);
  static BorderRadius md = BorderRadius.circular(Radius.md);
  static BorderRadius lg = BorderRadius.circular(Radius.lg);
  static BorderRadius xl = BorderRadius.circular(Radius.xl);
}
