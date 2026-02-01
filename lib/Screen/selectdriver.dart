import 'package:flutter/material.dart';

import 'package:taxi_app/widget/map.dart';
import 'package:taxi_app/widget/selectdriver.dart';

class Selectdrivers extends StatefulWidget {
  const Selectdrivers({super.key});

  @override
  State<Selectdrivers> createState() => _SelectdriverState();
}

class _SelectdriverState extends State<Selectdrivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MapWidget(widget: Selectedriver()),
    );
  }
}
