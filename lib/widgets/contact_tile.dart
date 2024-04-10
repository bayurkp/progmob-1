import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';

class ContactTile extends StatefulWidget {
  const ContactTile({
    super.key,
    required this.name,
    required this.email,
  });

  final String name;
  final String email;

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(25.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15.0,
          sigmaY: 15.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.base100.withOpacity(0.6),
            border: Border.all(
              width: 2.0,
              color: AppColors.base300,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            leading: const Icon(
              Icons.person,
              size: 32.0,
            ),
            title: Text(
              widget.name,
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              widget.email,
            ),
            trailing: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
