// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:blurple/themes/theme_data.dart';

class BaseInput extends StatelessWidget {
  const BaseInput({
    Key? key,
    required this.obscureText,
    required this.label,
    this.labelStyle,
    this.suffix,
    this.preffix,
    this.contentPadding,
    this.onSaved,
    this.onTap,
    this.type,
    this.readOnly,
    this.enabled,
  }) : super(key: key);

  final bool obscureText;
  final String label;
  final TextStyle? labelStyle;
  final Widget? suffix;
  final Widget? preffix;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String? value)? onSaved;
  final VoidCallback? onTap;
  final TextInputType? type;
  final bool? readOnly;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      keyboardType: type,
      onTap: onTap,
      enabled: enabled,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        fillColor: theme.colorScheme.inputBackgroundColor,
        suffix: suffix,
        prefix: preffix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            theme.radiusScheme.inputRadius,
          ),
          borderSide: BorderSide(
            width: .5,
            color: theme.colorScheme.borderColor,
          ),
        ),
        contentPadding: contentPadding ?? theme.spacingScheme.inputPadding,
      ),
      style: labelStyle ??
          theme.fontScheme.p1.copyWith(
            color: theme.colorScheme.inputForegroundColor,
          ),
    );
  }
}
