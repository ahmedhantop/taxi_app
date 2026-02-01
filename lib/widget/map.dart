import 'package:flutter/material.dart';

import 'package:taxi_app/constant/color.dart';
import 'package:taxi_app/constant/imageasseet.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(Imageasseet.mapimage, fit: BoxFit.fill),
        Container(
          height: 80,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(Imageasseet.path, width: 100, height: 252),
          ),
        ),
        Positioned(
          top: 40,
          left: 16,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: AppColor.color4,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: AppColor.color5),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

        Align(alignment: Alignment.bottomCenter, child: widget),
      ],
    );
  }
}
