import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/colors.dart';
import 'package:flutter_application_1/constant/imageasset.dart';

class Dotscontroller extends StatefulWidget {
  const Dotscontroller({super.key});

  @override
  State<Dotscontroller> createState() => _DotscontrollerState();
}

class _DotscontrollerState extends State<Dotscontroller> {
  //int currentPage = 0;
  List<Map<String, dynamic>> boarding = [
    {
      'title': 'Request Ride',
      'image': Imageasseet.imgonboarding1,
      'body': 'Request a ride get picked up by a \n nearby community driver',
    },

    {
      'title': 'Confirm Your Driver',
      'image': Imageasseet.imgonboarding2,
      'body':
          'Huge drivers network helps you find \n comforable, safe and cheap ride',
    },

    {
      'title': 'Track your ride',
      'image': Imageasseet.imgonboarding3,
      'body':
          'Know your driver in advance and be\n able to view current location in real time\n on the map  ',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        boarding.length,
        (index) => Container(
          width: 30,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color:
                // currentPage == index
                //   ?
                AppColor.primaryColor,
            // : AppColor.secondColor,
            // }),
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        ///AnimatedContainer(
        // key: UniqueKey(),
        // margin: const EdgeInsets.only(right: 5),//
        // duration: const Duration(milliseconds: 900),
        // curve: Curves.linear,
        //// width: currentPage == index ? 30 : 50,
        //height: 6,
        //decoration: BoxDecoration(
        //color: currentPage == index
        //  ? AppColor.primaryColor
        // : AppColor.secondColor,
        // borderRadius: BorderRadius.circular(10),
        //  ),
        // ),
      ),
    );
  }
}
