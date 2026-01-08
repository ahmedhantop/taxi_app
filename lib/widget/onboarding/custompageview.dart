import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/select_location.dart';
import 'package:flutter_application_1/constant/colors.dart';
import 'package:flutter_application_1/constant/imageasset.dart';

class custompageview extends StatefulWidget {
  custompageview({super.key});

  @override
  State<custompageview> createState() => _custompageviewcontrollerState();
}

class _custompageviewcontrollerState extends State<custompageview> {
  int currentPage = 0;
  late PageController pageController;
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

  onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView.builder(
              dragStartBehavior: DragStartBehavior.start,
              scrollBehavior: const MaterialScrollBehavior().copyWith(
                dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: boarding.length,
              onPageChanged: (val) {
                onPageChanged(val);
              },

              itemBuilder: (context, i) => Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      boarding[i]['image'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  // ),
                  const SizedBox(height: 60),
                  Text(
                    boarding[i]['title'],

                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.textColor,
                    ),
                  ),

                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      boarding[i]['body'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: AppColor.textColor),
                    ),
                  ),
                  const SizedBox(height: 20),
                  i == 2
                      ? Column(
                          children: [
                            const SizedBox(height: 30),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 140,
                              ),
                              width: double.infinity,
                              child: MaterialButton(
                                height: 45,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: AppColor.primaryColor,
                                textColor: AppColor.backgroundColor,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Selectlocation(), // الصفحة التالية
                                    ),
                                  );
                                },
                                child: Text(
                                  "Get started!",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            //const SizedBox(height: 50),//
                          ],
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          //dotscontroller//
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              boarding.length,
              (index) => Container(
                width: 30,
                height: 6,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: currentPage == index
                      ? AppColor.primaryColor
                      : AppColor.secondColor,
                  //  }),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
