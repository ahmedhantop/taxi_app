import 'package:flutter/material.dart';
import 'package:taxi_app/constant/colors.dart';
import 'package:taxi_app/widget/onboarding/custompageview.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    //Get.put(OnBoardingControllerImp());//
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child:  custompageview())
      
    );
  }
}
