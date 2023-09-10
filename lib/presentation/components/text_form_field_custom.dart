import 'package:flutter/material.dart';

import '../styles/styles_text.dart';

class TextFormFieldCustom extends StatelessWidget {
  final Key? fieldKey;
  final String labelText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final TextInputType? keyboardType;
  final bool? showCursor;
  final bool isValid;

  const TextFormFieldCustom(
      {super.key,
      required this.labelText,
      this.controller,
      this.onTap,
      this.keyboardType,
      this.onTapOutside,
      this.onFieldSubmitted,
      this.showCursor,
      this.onEditingComplete,
      this.focusNode,
      this.onChanged,
      this.validator,
      this.autovalidateMode,
      this.fieldKey,
      required this.isValid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: fieldKey,
      style: StylesText.input,
      decoration: InputDecoration(
        labelText: labelText,
        fillColor: isValid
            ? Theme.of(context).inputDecorationTheme.fillColor
            : const Color(0x26EB5757).withOpacity(0.15),
      ),
      controller: controller,
      validator: validator,
      focusNode: focusNode,
      onChanged: onChanged,
      onTap: onTap,
      onTapOutside: onTapOutside,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      keyboardType: keyboardType,
      showCursor: showCursor,
      autovalidateMode: autovalidateMode,
    );
  }
}
