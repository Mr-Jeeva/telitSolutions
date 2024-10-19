import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/colors.dart';
import '../../resource/responsive.dart';

class PartnersTab extends StatefulWidget {
  const PartnersTab(AutoScrollController aScrollController, {super.key});

  @override
  State<PartnersTab> createState() => _PartnersTabState();
}

class _PartnersTabState extends State<PartnersTab> {
  final scrollController = ScrollController();
  double offset = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getScreenWidth(context),
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.05, right: SizeConfig.getScreenWidth(context) * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PROVEN TRACK RECORD",
                  style: GoogleFonts.montserrat(
                      fontSize: SizeConfig.getScreenWidth(context) * 0.012, fontWeight: FontWeight.bold, color: Colors.black54)),
              Text("We partner with the",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
              Text("best clients",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.secondaryColor)),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        if (offset > 0) {
                          offset = offset - 300;
                          scrollController.animateTo(offset, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          setState(() {});
                        }
                      },
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: SizeConfig.getScreenWidth(context) * 0.03,
                        color: Colors.black54,
                      )),
                  Expanded(
                    child: SizedBox(
                      height: SizeConfig.getScreenWidth(context) * 0.15,
                      child: ListView.builder(
                          itemCount: 11,
                          scrollDirection: Axis.horizontal,
                          controller: scrollController,
                          itemBuilder: (cont, index) => Container(
                                padding: EdgeInsets.only(right: index == 10 ? 0 : 20),
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Container(
                                    height: SizeConfig.getScreenWidth(context) * 0.15,
                                    width: SizeConfig.getScreenWidth(context) * 0.15,
                                    padding: const EdgeInsets.all(25),
                                    child: Image.asset(
                                      "assets/partners/${index + 1}.png",
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        if (offset < 1500) {
                          offset = offset + 300;
                          scrollController.animateTo(offset, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          setState(() {});
                        }
                      },
                      child: Icon(Icons.arrow_forward_ios_rounded, size: SizeConfig.getScreenWidth(context) * 0.03, color: Colors.black54)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    onTap: () {
                      offset = 0;
                      scrollController.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 0 ? Colors.black : Colors.grey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      offset = 300;
                      scrollController.animateTo(300, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 300 ? Colors.black : Colors.grey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      offset = 600;
                      scrollController.animateTo(600, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 600 ? Colors.black : Colors.grey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      offset = 900;
                      scrollController.animateTo(900, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 900 ? Colors.black : Colors.grey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      offset = 1200;
                      scrollController.animateTo(1200, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 1200 ? Colors.black : Colors.grey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      offset = 1500;
                      scrollController.animateTo(1500, duration: Duration(seconds: 1), curve: Curves.easeIn);
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 5, backgroundColor: offset == 1500 ? Colors.black : Colors.grey),
                    ),
                  ),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
