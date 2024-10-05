import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
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
      width: SizeConfig.getScreenWidth(context),
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
                      fontSize: SizeConfig.getScreenWidth(context) * 0.012, fontWeight: FontWeight.bold, color: Colors.black54)),
              Text("How we can assist",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
              Text("your Business",
                  style: GoogleFonts.ubuntu(
                      height: 1, fontSize: SizeConfig.getScreenWidth(context) * 0.03, fontWeight: FontWeight.bold, color: AppColors.secondaryColor)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.12,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Discover",
                            textAlign: TextAlign.center, style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                          width: SizeConfig.getScreenWidth(context) * 0.12,
                          child: Text(
                            "Together we determine your product vision based on your (customer) needs and vision on the future of your business.",
                            style: GoogleFonts.montserrat(color: Colors.black54, fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.12,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Develop",
                            textAlign: TextAlign.center, style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                          width: SizeConfig.getScreenWidth(context) * 0.12,
                          child: Text(
                            "We develop the needed solution using agile methodologies.",
                            style: GoogleFonts.montserrat(color: Colors.black54, fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.12,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                            BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Drive",
                            textAlign: TextAlign.center, style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                          width: SizeConfig.getScreenWidth(context) * 0.12,
                          child: Text(
                            "We deliver your solution to the user and, if needed, we maintain and develop your solutions towards the future",
                            style: GoogleFonts.montserrat(color: Colors.black54, fontWeight: FontWeight.w500),
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
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondaryColor, width: 2.5),
                        borderRadius: BorderRadius.circular(100)),
                    width: 50,
                    height: 50,
                    child: Center(child: Text("1"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.05),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondaryColor, width: 2.5),
                        borderRadius: BorderRadius.circular(100)),
                    width: 50,
                    height: 50,
                    child: Center(child: Text("2"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.05),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondaryColor, width: 2.5),
                        borderRadius: BorderRadius.circular(100)),
                    width: 50,
                    height: 50,
                    child: Center(child: Text("3"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.05),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondaryColor, width: 2.5),
                        borderRadius: BorderRadius.circular(100)),
                    width: 50,
                    height: 50,
                    child: Center(child: Text("4"))),
                Container(height: 2.5, color: AppColors.secondaryColor, width: SizeConfig.getScreenWidth(context) * 0.05),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.secondaryColor, width: 2.5),
                        borderRadius: BorderRadius.circular(100)),
                    width: 50,
                    height: 50,
                    child: Center(child: Text("5"))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.12,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                        BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Document",
                            textAlign: TextAlign.center, style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                          width: SizeConfig.getScreenWidth(context) * 0.12,
                          child: Text(
                            "We create a clear backlog to document the short and long term goals. We define the needs, translate them into requirements and design your solution.",
                            style: GoogleFonts.montserrat(color: Colors.black54, fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: SizeConfig.getScreenWidth(context) * 0.12,
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        decoration:
                        BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.2), borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text("Deploy",
                            textAlign: TextAlign.center, style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: SizeConfig.getScreenWidth(context) * 0.02),
                          width: SizeConfig.getScreenWidth(context) * 0.12,
                          child: Text(
                            "We will deploy your solution(s) following automated development pipelines and CI/CD based on your demands.",
                            style: GoogleFonts.montserrat(color: Colors.black54, fontWeight: FontWeight.w500),
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
