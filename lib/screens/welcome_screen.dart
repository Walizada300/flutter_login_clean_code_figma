import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_in/components/button_component.dart';
import 'package:sign_in/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/bg.png", fit: BoxFit.cover),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset("assets/svg/logo.svg"),
                    SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonComponent(
                        title: "Login",
                        onTap: () {
                          // click here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonComponent(
                        title: "Register",
                        bgColor: Colors.transparent,
                        titleColor: Colors.black,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 50),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Continue as a guest",
                        style: TextStyle(
                          color: Color(0xff01C8CC),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
