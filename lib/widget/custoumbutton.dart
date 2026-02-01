import 'package:flutter/material.dart';
import 'package:taxi_app/constant/color.dart';

class Custoumbutton extends StatelessWidget {
  const Custoumbutton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
  }) : super(key: key);
  final String text;
  final double? height;
  final double? width;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,

        width: double.infinity,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.primaryColor,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              color: AppColor.color4,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
    );
  }
}
