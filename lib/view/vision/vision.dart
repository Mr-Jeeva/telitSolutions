import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/vision/visionMobile.dart';
import 'package:telit_solutions/view/vision/visionTab.dart';
import 'package:telit_solutions/view/vision/visionWeb.dart';

class Vision extends StatefulWidget {
  AutoScrollController aScrollController;

  Vision(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Vision> createState() => _VisionState();
}

class _VisionState extends State<Vision> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: VisionTab(widget.aScrollController),
      mobileView: VisionMobile(widget.aScrollController),
      webView: VisionWeb(widget.aScrollController),
    );
  }
}
