import 'package:flutter/material.dart';
import 'package:taxi_app/constant/color.dart';
import 'package:taxi_app/constant/imageasseet.dart';
import 'package:taxi_app/widget/custoumbutton.dart';
import 'package:taxi_app/widget/successmessage.dart';

class Selectedriver extends StatefulWidget {
  const Selectedriver({super.key});

  @override
  State<Selectedriver> createState() => _SelectedriverState();
}

class _SelectedriverState extends State<Selectedriver> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,

      decoration: BoxDecoration(
        color: AppColor.containerpromo,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(child: Image.asset(Imageasseet.oval)),
                ),
                SizedBox(width: 10),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gregory Smith",
                        style: TextStyle(color: AppColor.color1, fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          SizedBox(width: 7),
                          Text(
                            "4.9",
                            style: TextStyle(
                              color: AppColor.color5,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Spacer(),

                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(child: Image.asset(Imageasseet.oval2)),
                ),
                SizedBox(width: 20),

                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(child: Image.asset(Imageasseet.oval3)),
                ),
              ],
            ),
          ),

          Positioned(
            left: 0,
            right: 0,

            bottom: 0,
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.color4,

                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(Imageasseet.oval4),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage(Imageasseet.oval5),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          backgroundImage: AssetImage(Imageasseet.oval6),
                        ),

                        SizedBox(width: 20),
                        Text(
                          "25 Recommended",
                          style: TextStyle(
                            color: AppColor.color1,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    Divider(height: 20, color: AppColor.color6),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(Imageasseet.imagev1),
                        SizedBox(width: 30),
                        //SizedBox(width: 10,),//
                        //List.generate//
                        Column(
                          children: [
                            Text(
                              "Distance",
                              style: TextStyle(
                                color: AppColor.color2,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "0.2km",
                              style: TextStyle(
                                color: AppColor.color1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(
                                color: AppColor.color2,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "2min",
                              style: TextStyle(
                                color: AppColor.color1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                color: AppColor.color2,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "\$25.00",
                              style: TextStyle(
                                color: AppColor.color1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Custoumbutton(
                      onPressed: () {
                        showDialog(
                          context: Navigator.of(
                            context,
                            rootNavigator: true,
                          ).context,
                          barrierDismissible: false,
                          builder: (context) => const Successmessage(),
                        );
                      },
                      text: 'Confirm',
                      width: double.infinity,
                      height: 50,
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
