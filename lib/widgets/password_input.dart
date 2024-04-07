import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/constants/text_sizes.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const PasswordInput({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isHidden,
      obscuringCharacter: '•',
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
        suffixIcon: Transform.translate(
          offset: const Offset(-16, 0),
          child: IconButton(
            icon: _isHidden
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isHidden = !_isHidden;
              });
            },
          ),
        ),
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
