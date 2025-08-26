import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    this.borderColor,
    this.bgColor,
    this.title,
    this.borderRadius,
    this.onTap,
    this.titleColor,
  });

  final Color? borderColor, bgColor, titleColor;
  final String? title;
  final double? borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      fillColor: bgColor ?? Color(0xff1E232C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        side: BorderSide(color: borderColor ?? Colors.black),
      ),
      child: Text(
        title ?? "Title",
        style: TextStyle(
          color: titleColor ?? Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, this.iconAddress, this.onTap});

  final String? iconAddress;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xFFD5D9E1)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SvgPicture.asset(iconAddress ?? "assets/svg/facebook.svg"),
    );
  }
}
