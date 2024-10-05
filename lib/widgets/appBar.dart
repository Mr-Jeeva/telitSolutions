import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/resource/appClass.dart';
import 'package:telit_solutions/resource/colors.dart';
import 'package:telit_solutions/resource/responsive.dart';
import 'package:telit_solutions/resource/styles.dart';

class ActionBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final AutoScrollController controller;

  ActionBar(this.controller, {Key? key}) : super(key: key);

  @override
  ConsumerState<ActionBar> createState() => _ActionBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ActionBarState extends ConsumerState<ActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(child: () {
      ScreenType scrType = AppClass().getScreenType(context);
      if (scrType == ScreenType.mobile || scrType == ScreenType.tab) {
        return const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
            children: [],
          ),
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: SizeConfig.getScreenHeight(context) * 0.06, // 10
            color: AppColors.primaryColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 9,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.getScreenWidth(context) * 0.03),
                          child: Row(children: [
                            const Icon(
                              Icons.phone_iphone_rounded,
                              color: Colors.black54,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("+91 (917) 660 0681",
                                  style: TxtStyle.smallWhiteTxt(context)),
                            )
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.getScreenWidth(context) * 0.02),
                          child: Row(children: [
                            const Icon(
                              Icons.mail_rounded,
                              color: Colors.black54,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text("sathish@telitsolutions.in",
                                  style: TxtStyle.smallWhiteTxt(context)),
                            )
                          ]),
                        )
                      ],
                    )),
                const Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.facebook,
                            color: Colors.black54,
                            size: 20,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(CupertinoIcons.globe,
                            color: Colors.black54,
                            size: 20,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.account_balance_outlined,
                            color: Colors.black54,
                            size: 20,),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Container(
            height: SizeConfig.getScreenHeight(context) * 0.11, // 30
            padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.025),
            color: Colors.white,
            child: Row(
              children: [
                Image.asset(
                  "assets/applogo.png",
                  height: SizeConfig.getScreenHeight(context) * 0.1,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Telit Solutions", style: GoogleFonts.anton(fontSize: 25, color: Colors.black54)),
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Home", style: TxtStyle.boldBlack(context)),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.025),
                      child: Text("Our Services", style: TxtStyle.boldBlack(context)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.025),
                      child: Text("Blog", style: TxtStyle.boldBlack(context)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.025),
                      child: Text("Testimonial", style: TxtStyle.boldBlack(context)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.getScreenWidth(context) * 0.025,
                          right: SizeConfig.getScreenWidth(context) * 0.025),
                      child: FilledButton(onPressed: () {},
                          style: FilledButton.styleFrom(),
                          child: const Text("Get In Touch")),
                    )
                  ]
                ))
              ],
            ),
          )
        ],
      );
    } ());
  }

  mOnTab(int i) {
    widget.controller
        .scrollToIndex(i, preferPosition: AutoScrollPosition.begin);
  }
}
