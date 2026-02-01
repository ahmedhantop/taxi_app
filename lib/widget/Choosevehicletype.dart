import 'package:flutter/material.dart';
import 'package:taxi_app/constant/color.dart';
import 'package:taxi_app/constant/imageasseet.dart';
import 'package:taxi_app/widget/custoumbutton.dart';

// ignore: must_be_immutable
class Choosevehicletype extends StatefulWidget {
  const Choosevehicletype({super.key});

  @override
  State<Choosevehicletype> createState() => _ChoosevehicletypeState();
}

class _ChoosevehicletypeState extends State<Choosevehicletype> {
  bool isOpen = true;
  List<Map<String, dynamic>> vechile = [
    {'im': 'assets/images/wallet.png', 'ic': 'Payment'},

    {'im': 'assets/images/Combined-Shape.png', 'ic': 'Promo code'},
    {'im': 'assets/images/other.png', 'ic': 'Options'},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Image.asset(Imageasseet.rectangle),
        ),

        AnimatedSize(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
          child: isOpen
              ? Container(
                  decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),

                  // child: ListView(//
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(
                                      Imageasseet.imagev1,
                                      height: 80,
                                      width: 80,
                                    ),
                                  ),

                                  Column(
                                    children: [
                                      Text(
                                        "Just go",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: AppColor.color1,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //SizedBox(height: 10),//
                                      Text(
                                        "Near by you",

                                        style: TextStyle(
                                          color: AppColor.color2,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Column(
                                children: [
                                  Text(
                                    "\$25.00",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: AppColor.color3,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //SizedBox(height: 10),//
                                  Text(
                                    "2 mins",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.color2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                    vechile.length,
                                    (index) => Row(
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              vechile[index]['im'],
                                              height: 40,
                                              width: 40,
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              vechile[index]['ic'],
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: AppColor.textColor,
                                              ),
                                            ),
                                          ],
                                        ),

                                        if (index != vechile.length - 1)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 30,
                                            ),
                                            child: Image.asset(
                                              Imageasseet.line2,
                                              height: 40,
                                              width: 40,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),

                              Custoumbutton(
                                text: "Request",
                                height: 40,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      ],
    );
  }
}
