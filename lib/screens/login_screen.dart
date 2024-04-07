import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:progmob_1/constants/app_colors.dart';
import 'package:progmob_1/constants/text_sizes.dart';
import 'package:progmob_1/widgets/glass_container.dart';
import 'package:progmob_1/widgets/password_input.dart';
import 'package:progmob_1/widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool? _rememberMe = false;

  Map<String, dynamic> get data {
    return {
      'email': _emailController.text,
      'password': _passwordController.text,
      'remember_me': _rememberMe,
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
                        'Hello Again!',
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

                      // Remember Me Checkbox
                      Transform.translate(
                        offset: const Offset(-20.0, 0.0),
                        child: CheckboxListTile(
                          checkColor: AppColors.primary,
                          fillColor: MaterialStateProperty.all<Color>(
                            AppColors.base100,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: BorderSide(
                            color: AppColors.white.withOpacity(0.0),
                          ),
                          title: Transform.translate(
                            offset: const Offset(-16.0, 0.0),
                            child: const Text(
                              'Remember me',
                              style: TextStyle(
                                fontSize: TextSizes.secondary,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
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
                            'Sign In',
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
                          text: const TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(
                              color: AppColors.black,
                              fontFamily: 'Poppins',
                              fontSize: TextSizes.secondary,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Register Now',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                ),
                              )
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
