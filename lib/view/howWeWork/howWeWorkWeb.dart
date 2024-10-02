import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/responsive.dart';

class HowWeWorkWeb extends StatefulWidget {
  const HowWeWorkWeb(AutoScrollController aScrollController, {super.key});

  @override
  State<HowWeWorkWeb> createState() => _HowWeWorkWebState();
}

class _HowWeWorkWebState extends State<HowWeWorkWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.getScreenHeight(context),
      width: SizeConfig.getScreenWidth(context),
      color: Colors.green,
    );
  }
}
