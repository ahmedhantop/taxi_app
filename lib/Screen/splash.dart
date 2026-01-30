import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/onboarding.dart';
import 'package:flutter_application_1/constant/colors.dart';
import 'package:flutter_application_1/constant/imageasset.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Onboarding(), // الصفحة التالية
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image.asset(
        height: 200,
        Imageasseet.backsplash,
        fit: BoxFit.cover,
      ),
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(Imageasseet.logo),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 50,

                      color: AppColor.backgroundColor,
                    ),
                  ),
                  Text(
                    'ber',
                    style: TextStyle(
                      fontSize: 45,

                      color: AppColor.backgroundColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
