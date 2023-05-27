// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blurple/sizes/spacings.dart';
import 'package:flutter/material.dart';

import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/services.dart';

class BaseInput extends StatelessWidget {
  const BaseInput({
    Key? key,
    this.label,
    this.obscureText,
    this.labelStyle,
    this.suffixIcon,
    this.preffixIcon,
    this.contentPadding,
    this.onSaved,
    this.onTap,
    this.type,
    this.readOnly,
    this.enabled,
    this.cursorColor,
    this.inputStyle,
    this.validator,
    this.hintStyle,
    this.hintText,
    this.fillColor,
    this.textCapitalization,
    this.controller,
    this.focusNode,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  final bool? obscureText;
  final String? label;
  final TextStyle? labelStyle;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String? value)? onSaved;
  final VoidCallback? onTap;
  final TextInputType? type;
  final bool? readOnly;
  final bool? enabled;
  final TextStyle? inputStyle;
  final Color? cursorColor;
  final String? Function(String? value)? validator;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onFieldSubmitted;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return TextFormField(
      key: key,
      controller: controller,
      obscureText: obscureText ?? false,
      focusNode: focusNode,
      onSaved: onSaved,
      keyboardType: type,
      onTap: onTap,
      enabled: enabled,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly ?? false,
      cursorColor: cursorColor ?? theme.colorScheme.accentColor,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: fillColor ?? theme.colorScheme.inputBackgroundColor,
        floatingLabelStyle:
            labelStyle?.copyWith(color: labelStyle?.color?.withOpacity(.75)) ??
                theme.fontScheme.input.copyWith(
                  fontSize: 13,
                  color: theme.fontScheme.input.color!.withOpacity(.75),
                  fontWeight: FontWeight.bold,
                ),
        hintText: hintText,
        hintStyle: hintStyle ??
            theme.fontScheme.input.copyWith(
              color: theme.colorScheme.accentColor.withOpacity(.6),
            ),
        suffixIcon: suffixIcon,
        prefixIcon: preffixIcon,
        labelText: label,
        labelStyle: labelStyle ??
            theme.fontScheme.input.copyWith(
              color: theme.colorScheme.inputForegroundColor.withOpacity(.75),
            ),
        filled: true,
        disabledBorder: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            theme.radiusScheme.inputRadius,
          ),
          borderSide: BorderSide(
            width: .5,
            color: ColorTokens.greyLighter,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: .8,
            color: theme.colorScheme.accentColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.dangerColor,
            width: .5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: theme.colorScheme.dangerColor,
          ),
        ),
        contentPadding: contentPadding ?? theme.spacingScheme.inputPadding,
      ),
      style: inputStyle ?? theme.fontScheme.input,
    );
  }

  factory BaseInput.large({
    bool? obscureText,
    String? label,
    TextStyle? labelStyle,
    Widget? suffixIcon,
    Widget? preffixIcon,
    void Function(String? value)? onSaved,
    VoidCallback? onTap,
    TextInputType? type,
    bool? readOnly,
    bool? enabled,
    TextStyle? inputStyle,
    Color? cursorColor,
    String? Function(String? value)? validator,
    String? hintText,
    TextStyle? hintStyle,
    Color? fillColor,
    TextCapitalization? textCapitalization,
    TextEditingController? controller,
    FocusNode? focusNode,
    List<TextInputFormatter>? inputFormatters,
    void Function(String)? onFieldSubmitted,
  }) {
    return BaseInput(
      label: label,
      labelStyle: labelStyle,
      obscureText: obscureText,
      suffixIcon: suffixIcon,
      preffixIcon: preffixIcon,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      cursorColor: cursorColor,
      validator: validator,
      hintStyle: hintStyle,
      fillColor: fillColor,
      textCapitalization: textCapitalization,
      controller: controller,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      enabled: enabled,
      hintText: hintText,
      inputStyle: inputStyle,
      contentPadding: EdgeInsets.symmetric(
        vertical: Spacings.xxl,
        horizontal: Spacings.md,
      ),
    );
  }
}
