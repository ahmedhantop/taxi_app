import 'package:flutter/material.dart';

import 'package:taxi_app/widget/map.dart';

class Choosevehicletype extends StatefulWidget {
  const Choosevehicletype({super.key});

  @override
  State<Choosevehicletype> createState() => _ChoosevehicletypeState();
}

class _ChoosevehicletypeState extends State<Choosevehicletype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MapWidget(widget: Choosevehicletype()),
    );
  }
}
