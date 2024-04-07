import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/constants/text_sizes.dart';

class TextInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? type;

  const TextInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.type,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.type ?? TextInputType.text,
      controller: widget.controller,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(24.0),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: TextSizes.body,
          color: AppColors.neutral,
        ),
        fillColor: AppColors.base100,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.white.withOpacity(0.0),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.white.withOpacity(0.0),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
