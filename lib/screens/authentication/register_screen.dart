import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/utils/colors.dart';
import 'package:flutter_social_media_app/widgets/button.dart';
import 'package:flutter_social_media_app/widgets/text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(height: 20),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: secondaryColor,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/428321/pexels-photo-428321.jpeg"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadiusDirectional.circular(30),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: mainPurpleColor,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
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
                TextInputField(
                  controller: _userNameController,
                  hintText: "Enter a username",
                  isPassword: false,
                  inputKeyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextInputField(
                  controller: _bioController,
                  hintText: "Enter Bio",
                  isPassword: false,
                  inputKeyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                SubmitButton(
                  onPressed: () {},
                  text: "Register",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Log In",
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
    );
  }
}
