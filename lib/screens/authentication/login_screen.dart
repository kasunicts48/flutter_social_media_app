import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_social_media_app/screens/authentication/register_screen.dart';
import 'package:flutter_social_media_app/utils/colors.dart';
import 'package:flutter_social_media_app/widgets/button.dart';
import 'package:flutter_social_media_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: mobileGradientBackgroundColor,
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image.asset(
                    'assets/images/VibeSphereLogo02.png',
                    height: 150,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextInputField(
                    controller: _emailController,
                    hintText: "Enter you email",
                    isPassword: false,
                    inputKeyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextInputField(
                    controller: _passwordController,
                    hintText: "Enter a password",
                    isPassword: true,
                    inputKeyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SubmitButton(
                    onPressed: () {},
                    text: "Log In",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
