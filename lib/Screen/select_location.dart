import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/colors.dart';
import 'package:flutter_application_1/constant/imageasset.dart';

class Selectlocation extends StatefulWidget {
  const Selectlocation({super.key});

  @override
  State<Selectlocation> createState() => _SelectlocationState();
}

class _SelectlocationState extends State<Selectlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(Imageasseet.imgonboarding4),
              ),
              SizedBox(height: 20),
              Text(
                'Hi, nice to meet you!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.textColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Choose your location to start find\n restaurants around you.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColor.secondColor),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // padding: EdgeInsets.symmetric(horizontal: 80),//
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColor.primaryColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.near_me, color: AppColor.primaryColor),
                      SizedBox(width: 10),
                      Text(
                        'Use current location',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Select it manually',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
