import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../themes/theme_data.dart';

class BaseSearchableDropdown<T> extends StatelessWidget {
  const BaseSearchableDropdown({
    super.key,
    this.hint,
    this.controller,
    this.direction,
    this.enabled = true,
    this.suggestionsBoxDecoration,
    required this.itemBuilder,
    required this.onSuggestionSelected,
    required this.suggestionsCallback,
  });

  final String? hint;
  final TextEditingController? controller;
  final AxisDirection? direction;
  final bool enabled;
  final Widget Function(BuildContext context, T value) itemBuilder;
  final void Function(T value) onSuggestionSelected;
  final FutureOr<Iterable<T>> Function(String pattern) suggestionsCallback;
  final SuggestionsBoxDecoration? suggestionsBoxDecoration;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return TypeAheadField<T>(
      suggestionsCallback: suggestionsCallback,
      ignoreAccessibleNavigation: true,
      suggestionsBoxDecoration:
          suggestionsBoxDecoration ?? const SuggestionsBoxDecoration(),
      direction: direction ?? AxisDirection.down,
      hideOnEmpty: true,
      textFieldConfiguration: TextFieldConfiguration(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          enabled: enabled,
          filled: true,
          contentPadding: theme.spacingScheme.inputPadding,
          labelStyle: theme.fontScheme.input,
          hintStyle: theme.fontScheme.input,
          fillColor: theme.colorScheme.inputBackgroundColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: .1,
              color: theme.colorScheme.borderColor,
            ),
            borderRadius: BorderRadius.circular(
              theme.radiusScheme.inputRadius,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              theme.radiusScheme.inputRadius,
            ),
            borderSide: const BorderSide(
              width: .1,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      hideSuggestionsOnKeyboardHide: true,
      itemBuilder: itemBuilder,
      onSuggestionSelected: onSuggestionSelected,
    );
  }
}
