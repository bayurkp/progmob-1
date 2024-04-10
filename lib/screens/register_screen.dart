import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/constants/text_sizes.dart';
import 'package:progmob_1/widgets/glass_container.dart';
import 'package:progmob_1/widgets/password_input.dart';
import 'package:progmob_1/widgets/text_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Map<String, dynamic> get data {
    return {
      'full_name': _fullNameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: AppColors.base100,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.1, 0.6],
                          colors: <Color>[
                            AppColors.secondary.withOpacity(0.5),
                            AppColors.primary.withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  color: AppColors.white.withOpacity(0.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 64.0,
              ),
              child: GlassContainer(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 64.0,
                      ),

                      // Greeting
                      const Text(
                        'Welcome!',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                          fontSize: TextSizes.heading,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Text(
                        'Welcome Back, You\'ve been missed!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: TextSizes.larger,
                        ),
                      ),
                      const SizedBox(
                        height: 64.0,
                      ),

                      // Full Name Input Field
                      TextInput(
                        hintText: 'Full Name',
                        type: TextInputType.name,
                        controller: _fullNameController,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),

                      // Email Input Field
                      TextInput(
                        hintText: 'Email',
                        type: TextInputType.emailAddress,
                        controller: _emailController,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),

                      // Password Input Field
                      PasswordInput(
                        hintText: 'Password',
                        controller: _passwordController,
                      ),

                      const SizedBox(
                        height: 16.0,
                      ),

                      // Submit Button
                      TextButton(
                        onPressed: () {
                          print(data);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primary,
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(24.0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: AppColors.primaryContent,
                              fontSize: TextSizes.body,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),

                      // Register Link
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Have an account? ',
                            style: const TextStyle(
                              color: AppColors.black,
                              fontFamily: 'Poppins',
                              fontSize: TextSizes.secondary,
                            ),
                            children: <WidgetSpan>[
                              WidgetSpan(
                                child: GestureDetector(
                                  child: const Text(
                                    'Log In',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
