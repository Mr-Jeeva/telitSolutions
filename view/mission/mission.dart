import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/mission/missionMobile.dart';
import 'package:telit_solutions/view/mission/missionTab.dart';
import 'package:telit_solutions/view/mission/missionWeb.dart';

class Mission extends StatefulWidget {
  AutoScrollController aScrollController;

  Mission(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: MissionTab(widget.aScrollController),
      mobileView: MissionMobile(widget.aScrollController),
      webView: MissionWeb(widget.aScrollController),
    );
  }
}
