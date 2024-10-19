import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/footer/footerMobile.dart';
import 'package:telit_solutions/view/footer/footerTab.dart';
import 'package:telit_solutions/view/footer/footerWeb.dart';

class Footer extends StatefulWidget {
  AutoScrollController aScrollController;

  Footer(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: FooterTab(widget.aScrollController),
      mobileView: FooterMobile(widget.aScrollController),
      webView: FooterWeb(widget.aScrollController),
    );
  }
}
