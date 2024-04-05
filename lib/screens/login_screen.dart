import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/gradient_borders.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: -20,
                    right: -50,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: GradientBoxBorder(
                          width: 25,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.green.withOpacity(0.8),
                              Colors.blue.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue.withOpacity(0.4),
                            Colors.purple.withOpacity(0.4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -60,
                    left: -60,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: GradientBoxBorder(
                          width: 50,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.purple.withOpacity(0.4),
                              Colors.amber.withOpacity(0.4),
                            ],
                          ),
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
                  sigmaX: 15.0,
                  sigmaY: 15.0,
                ),
                child: Container(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 64.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 15.0,
                    sigmaY: 15.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      // color: Color(0xe4e5f1),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.black.withOpacity(0.1),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 64.0,
                          ),
                          const Text(
                            'Hello Again!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 32.0,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text(
                            'Welcome Back, You\'ve been missed!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 64.0,
                          ),
                          TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(24.0),
                              hintText: 'Email',
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextField(
                            obscureText: true,
                            obscuringCharacter: '•',
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(24.0),
                              hintText: 'Password',
                              fillColor: Colors.white,
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
                                  color: Colors.white.withOpacity(0.0),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(-20.0, 0.0),
                            child: CheckboxListTile(
                              checkColor: Colors.purple,
                              fillColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              side: BorderSide(
                                color: Colors.white.withOpacity(0.0),
                              ),
                              title: Transform.translate(
                                offset: const Offset(-16.0, 0.0),
                                child: const Text(
                                  'Remember me',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              value: true,
                              onChanged: (value) {},
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.purple),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(24.0),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Center(
                            child: RichText(
                              text: const TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Register Now',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.purple,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
