import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/partners/partnersMobile.dart';
import 'package:telit_solutions/view/partners/partnersTab.dart';
import 'package:telit_solutions/view/partners/partnersWeb.dart';

class Partners extends StatefulWidget {
  AutoScrollController aScrollController;

  Partners(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: PartnersTab(widget.aScrollController),
      mobileView: PartnersMobile(widget.aScrollController),
      webView: PartnersWeb(widget.aScrollController),
    );
  }
}
