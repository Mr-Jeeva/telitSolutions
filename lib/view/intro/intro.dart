import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/intro/introMobile.dart';
import 'package:telit_solutions/view/intro/introWeb.dart';
import 'introTab.dart';

class Intro extends StatefulWidget {
  AutoScrollController aScrollController;

  Intro(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: IntroTab(widget.aScrollController),
      mobileView: IntroMobile(widget.aScrollController),
      webView: IntroWeb(widget.aScrollController),
    );
  }
}
