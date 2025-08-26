import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sign_in/components/button_component.dart';
import 'package:sign_in/components/textfield_component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // for back
                        Navigator.pop(context);
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE8ECF4)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(12),
                        child: SvgPicture.asset("assets/svg/back_arrow.svg"),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Welcome back! Glad\nto see you, Again!",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),

                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextInputComponets(hintText: "Enter your email"),
                          SizedBox(height: 16),
                          TextInputComponets(
                            hintText: "Enter your password",
                            obscureText: isHidePassword,
                            suffixWidget: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isHidePassword = !isHidePassword;
                                  });
                                },
                                child: SvgPicture.asset("assets/svg/eye.svg"),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Forgot Password?"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonComponent(onTap: () {}, title: "Login"),
                    ),
                    SizedBox(height: 30),
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: Container(height: 1, color: Color(0xFFD5D9E1)),
                        ),
                        Text(
                          "Or Login with",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Expanded(
                          child: Container(height: 1, color: Color(0xFFD5D9E1)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: SocialMediaButton(
                            onTap: () {},
                            iconAddress: "assets/svg/facebook.svg",
                          ),
                        ),
                        Expanded(
                          child: SocialMediaButton(
                            onTap: () {},
                            iconAddress: "assets/svg/google.svg",
                          ),
                        ),
                        Expanded(
                          child: SocialMediaButton(
                            onTap: () {},
                            iconAddress: "assets/svg/apple.svg",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Color(0xff01C8CC)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
