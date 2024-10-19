import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/howWeWork/howWeWorkMobile.dart';
import 'package:telit_solutions/view/howWeWork/howWeWorkTab.dart';
import 'package:telit_solutions/view/howWeWork/howWeWorkWeb.dart';

class HowWeWork extends StatefulWidget {
  AutoScrollController aScrollController;

  HowWeWork(this.aScrollController, {super.key});

  @override
  State<HowWeWork> createState() => _HowWeWorkState();
}

class _HowWeWorkState extends State<HowWeWork> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: HowWeWorkTab(widget.aScrollController),
      mobileView: HowWeWorkMobile(widget.aScrollController),
      webView: HowWeWorkWeb(widget.aScrollController),
    );
  }
}
