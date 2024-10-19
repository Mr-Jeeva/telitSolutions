import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/colors.dart';
import '../../resource/responsive.dart';

class HowWeWorkMobile extends StatefulWidget {
  const HowWeWorkMobile(AutoScrollController aScrollController, {super.key});

  @override
  State<HowWeWorkMobile> createState() => _HowWeWorkMobileState();
}

class _HowWeWorkMobileState extends State<HowWeWorkMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getScreenWidth(context) - 60,
      margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.05, bottom: SizeConfig.getScreenWidth(context) * 0.05),
      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.05, right: SizeConfig.getScreenWidth(context) * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("HOW WE WORK",
                  style: GoogleFonts.montserrat(
                      fontSize: SizeConfig.getScreenWidth(context) * 0.02, fontWeight: FontWeight.bold, color: Colors.black54)),
              Text("How we can assist",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
              Text("your Business",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.secondaryColor)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.15,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor.withOpacity(0.4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Text("Supplies",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.025)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.015),
                          width: SizeConfig.getScreenWidth(context) * 0.20,
                          child: Text(
                            "We provide IT and office equipment, including desktops, laptops, printers, peripherals, cartridges, laptop parts, networking items, CCTV cameras, and access control systems from top brands.",
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.020),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.15,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Rental",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.025)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.015),
                          width: SizeConfig.getScreenWidth(context) * 0.20,
                          child: Text(
                            "Our rental solutions are designed to offer flexibility and convenience for both short-term and long-term requirements.",
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.020),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.15,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Network",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.025)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.015),
                          width: SizeConfig.getScreenWidth(context) * 0.20,
                          child: Text(
                            "Our Network Service allows our customers to quickly deploy LAN, MAN, and WAN environments that fit their networking needs and budget.",
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.020),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: AppColors.secondaryColor, width: 2.5), borderRadius: BorderRadius.circular(100)),
                    width: 40,
                    height: 40,
                    child: Center(child: Text("1"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.1),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: AppColors.secondaryColor, width: 2.5), borderRadius: BorderRadius.circular(100)),
                    width: 40,
                    height: 40,
                    child: Center(child: Text("2"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.1),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: AppColors.secondaryColor, width: 2.5), borderRadius: BorderRadius.circular(100)),
                    width: 40,
                    height: 40,
                    child: Center(child: Text("3"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.1),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: AppColors.secondaryColor, width: 2.5), borderRadius: BorderRadius.circular(100)),
                    width: 40,
                    height: 40,
                    child: Center(child: Text("4"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.1),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: AppColors.secondaryColor, width: 2.5), borderRadius: BorderRadius.circular(100)),
                    width: 40,
                    height: 40,
                    child: Center(child: Text("5"))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.035),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.15,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("AMC",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.025)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.015),
                          width: SizeConfig.getScreenWidth(context) * 0.20,
                          child: Text(
                            "We provide AMC services for desktops, laptops, workstations, servers, switches, routers, printers, and both online and offline UPS systems.",
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.020),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.15,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Services",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.025)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.015),
                          width: SizeConfig.getScreenWidth(context) * 0.20,
                          child: Text(
                            "We offer networking and security solutions, laptop repairs, upgrades, and data recovery. Additional services include monitor, printer, and UPS support, with pickup and drop-off for laptops.",
                            style: GoogleFonts.montserrat(
                                color: Colors.black54, fontWeight: FontWeight.w500, fontSize: SizeConfig.getScreenWidth(context) * 0.020),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
