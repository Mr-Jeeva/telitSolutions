import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/view/ourCulture/ourCulturWeb.dart';
import 'package:telit_solutions/view/ourCulture/ourCultureMobile.dart';
import 'package:telit_solutions/view/ourCulture/ourCultureTab.dart';

class Ourculture extends StatefulWidget {
  AutoScrollController aScrollController;

  Ourculture(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<Ourculture> createState() => _OurcultureState();
}

class _OurcultureState extends State<Ourculture> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: OurCultureTab(widget.aScrollController),
      mobileView: OurCultureMobile(widget.aScrollController),
      webView: OurCultureWeb(widget.aScrollController),
    );
  }
}
