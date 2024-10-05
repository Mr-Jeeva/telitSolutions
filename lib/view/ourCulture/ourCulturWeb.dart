import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';

class OurCultureWeb extends StatefulWidget {
  const OurCultureWeb(AutoScrollController aScrollController, {super.key});

  @override
  State<OurCultureWeb> createState() => _OurCultureWebState();
}

class _OurCultureWebState extends State<OurCultureWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: SizeConfig.getScreenWidth(context) * 0.02,
          left: SizeConfig.getScreenWidth(context) * 0.08,
          bottom: SizeConfig.getScreenWidth(context) * 0.02,
      right: SizeConfig.getScreenWidth(context) * 0.08,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our culture',
            style: GoogleFonts.ubuntu(
              height: 1,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.getScreenWidth(context) * 0.035,
              color: AppColors.primaryColor,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: SizeConfig.getScreenWidth(context)* 0.015),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Card(
                      child: Container(
                        height: SizeConfig.getScreenWidth(context)* 0.14,
                        padding: EdgeInsets.only(right: 8,left: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text('Open and direct',
                                    style: GoogleFonts.ubuntu(
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.getScreenWidth(context) * 0.02,
                                      color: AppColors.secondaryColor,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text('We are transparent and open. We communicate clearly and directly. This is how we work, because we see this as the key to a successful collaboration.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                    fontSize: SizeConfig.getScreenWidth(context) * 0.013,
                                    color: Colors.black54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      child: Container(
                        height: SizeConfig.getScreenWidth(context)* 0.14,
                        padding: EdgeInsets.only(right: 8,left: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text('Skilled',
                                    style: GoogleFonts.ubuntu(
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.getScreenWidth(context) * 0.02,
                                      color: AppColors.secondaryColor,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text('Our highly skilled IT professionals are specialised in Java, PHP, React, Angular, Vue.js, AWS. Clean code, simplicity, code reviews and test automation will gaurantee long term stability and maintanability of your solutions.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                    fontSize: SizeConfig.getScreenWidth(context) * 0.013,
                                    color: Colors.black54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: SizeConfig.getScreenWidth(context)* 0.015),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Card(
                      child: Container(
                        height: SizeConfig.getScreenWidth(context)* 0.14,
                        padding: EdgeInsets.only(right: 8,left: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text('Solution-driven',
                                    style: GoogleFonts.ubuntu(
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.getScreenWidth(context) * 0.02,
                                      color: AppColors.secondaryColor,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text('We combine our technical skills with business affinity and a critical mindset to deliver the best possible solution for your business. For us adding value to your business is the ultimate goal.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                    fontSize: SizeConfig.getScreenWidth(context) * 0.013,
                                    color: Colors.black54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Card(
                      child: Container(
                        height: SizeConfig.getScreenWidth(context)* 0.14,
                        padding: EdgeInsets.only(right: 8,left: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text('Trustworthy',
                                    style: GoogleFonts.ubuntu(
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.getScreenWidth(context) * 0.02,
                                      color: AppColors.secondaryColor,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text('We are always there to help clients with advice and actions. We take ownership, responsibility, and joy in delivering the best possible solutions.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.ubuntu(
                                    fontSize: SizeConfig.getScreenWidth(context) * 0.013,
                                    color: Colors.black54,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
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
