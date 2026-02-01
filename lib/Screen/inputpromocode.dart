import 'package:flutter/material.dart';

import 'package:taxi_app/widget/inputpromocode.dart';
import 'package:taxi_app/widget/map.dart';

class Inputpromocode extends StatefulWidget {
  const Inputpromocode({super.key});

  @override
  State<Inputpromocode> createState() => _InputpromocodeState();
}

class _InputpromocodeState extends State<Inputpromocode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MapWidget(widget: Inputpromo()),
    );
  }
}
