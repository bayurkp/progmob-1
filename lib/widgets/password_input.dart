import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/constants/text_sizes.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      obscuringCharacter: '•',
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(24.0),
        hintText: 'Password',
        hintStyle: const TextStyle(
          fontSize: TextSizes.body,
          color: AppColors.neutral,
        ),
        fillColor: AppColors.base100,
        filled: true,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {},
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
