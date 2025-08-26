import 'package:flutter/material.dart';

class TextInputComponets extends StatelessWidget {
  const TextInputComponets({
    super.key,
    this.hintText,
    this.controller,
    this.suffixWidget,
    this.obscureText,
  });

  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixWidget;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        suffix: suffixWidget,
        filled: true,
        fillColor: Color(0xFFFCFDFF),
        hintText: hintText ?? "Enter your email",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE8ECF4)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff01C8CC)),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE8ECF4)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
