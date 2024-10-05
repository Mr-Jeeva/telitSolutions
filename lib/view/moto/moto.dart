import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/moto/motoMobile.dart';
import 'package:telit_solutions/view/moto/motoTab.dart';
import 'package:telit_solutions/view/moto/motoWeb.dart';

class Moto extends StatefulWidget {
  AutoScrollController aScrollController;

  Moto(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Moto> createState() => _MotoState();
}

class _MotoState extends State<Moto> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: MotoTab(widget.aScrollController),
      mobileView: MotoMobile(widget.aScrollController),
      webView: MotoWeb(widget.aScrollController),
    );
  }
}
