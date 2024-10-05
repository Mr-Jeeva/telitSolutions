import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/getInTouch/getItTouchMobile.dart';
import 'package:telit_solutions/view/getInTouch/getItTouchTab.dart';
import 'package:telit_solutions/view/getInTouch/getItTouchWeb.dart';

class GetItTouch extends StatefulWidget {
  AutoScrollController aScrollController;

  GetItTouch(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<GetItTouch> createState() => _GetItTouchState();
}

class _GetItTouchState extends State<GetItTouch> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: GetItTouchTab(widget.aScrollController),
      mobileView: GetItTouchMobile(widget.aScrollController),
      webView: GetItTouchWeb(widget.aScrollController),
    );
  }
}
