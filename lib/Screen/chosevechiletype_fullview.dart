import 'package:flutter/material.dart';
import 'package:taxi_app/widget/chosevechiletype_fullview.dart';

import 'package:taxi_app/widget/map.dart';

class Chosevechiletypefullview extends StatefulWidget {
  const Chosevechiletypefullview({super.key});

  @override
  State<Chosevechiletypefullview> createState() =>
      _ChosevechiletypeFullviewState();
}

class _ChosevechiletypeFullviewState extends State<Chosevechiletypefullview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MapWidget(widget: ChosevechiletypeFullview()),
    );
  }
}
