import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';

class FooterTab extends StatefulWidget {
  const FooterTab(AutoScrollController aScrollController, {super.key});

  @override
  State<FooterTab> createState() => _FooterTabState();
}

class _FooterTabState extends State<FooterTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: SizeConfig.getScreenHeight(context) - (SizeConfig.getScreenHeight(context) * 0.17),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Telit Solutions", style: GoogleFonts.anton(fontSize: SizeConfig.getScreenWidth(context) * 0.025, color: Colors.white)),
                            Text("No.27/2, 1st Floor\nWest sivan koil street\nVadapalani, Chennai - 600026.",
                                style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Landline: ", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white, fontWeight: FontWeight.bold)),
                                      Text("044 - 42009333", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Mobile: ", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white, fontWeight: FontWeight.bold)),
                                      Text(" +91 (917) 6600 681", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("E-Mail: ", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white, fontWeight: FontWeight.bold)),
                                      Text("sathish@telitsolutions.in", style: GoogleFonts.openSans(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Supplies",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: SizeConfig.getScreenWidth(context) * 0.02, fontWeight: FontWeight.bold, color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                      "• Workstation/Server/DVD\n• Brand Printer/Paper\n• Bar code: Scanner/Stickers\n• Peripherals/Accessories\n• Screen/Networking\n• CCTV Cameras",
                                      style:
                                          GoogleFonts.ubuntu(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white, height: 1.5)),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Services",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: SizeConfig.getScreenWidth(context) * 0.02, fontWeight: FontWeight.bold, color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                      "• IT Solutions & Networking\n• Security Systems\n• Laptop Repairs\n• Power Solutions\n• Software & Hardware\n• Convenient Support",
                                      style:
                                          GoogleFonts.ubuntu(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white, height: 1.5)),
                                ),
                              ],
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Rental",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: SizeConfig.getScreenWidth(context) * 0.02, fontWeight: FontWeight.bold, color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                      "• Desktops & Laptops\n• Servers & Workstations\n• Ups and Servo Stabilizers\n• Printers\n• Switches & Routers",
                                      style: GoogleFonts.ubuntu(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("AMC",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: SizeConfig.getScreenWidth(context) * 0.02, fontWeight: FontWeight.bold, color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                      "• Desktops & Laptops\n• Workstations & Servers\n• Switches & Routers\n• Printers\n• online & Offline UPS",
                                      style: GoogleFonts.ubuntu(fontSize: SizeConfig.getScreenWidth(context) * 0.016, color: Colors.white)),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(
                        right: SizeConfig.getScreenWidth(context) * 0.02,
                        left: SizeConfig.getScreenWidth(context) * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Contact Us",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: SizeConfig.getScreenWidth(context) * 0.02)),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                              height: SizeConfig.getScreenWidth(context) * 0.055,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    hintText: "Name",
                                    hintStyle: TextStyle(color: AppColors.primaryColor),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                              height: SizeConfig.getScreenWidth(context) * 0.055,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                    hintText: "E-Mail",
                                    hintStyle: TextStyle(color: AppColors.primaryColor),
                                    filled: true,
                                    fillColor: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(10.0)),
                            child: Center(child: Text("Subscribe", style: TextStyle(color: Colors.white))),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
