import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/controller/generalController.dart';
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
      if (scrType == ScreenType.mobile) {
        return SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Row(
                  children: [
                    Consumer(builder: (context, ref, child) {
                      String hoveredValue = ref.watch(hoverProvider);
                      return InkWell(
                          onTap: () {
                            mOnTab(0);
                          },
                          onHover: (value) {
                            if (value) {
                              ref.read(hoverProvider.notifier).state = "home";
                            } else {
                              ref.read(hoverProvider.notifier).state = "";
                            }
                          },
                          child: Text("Home", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "home")));
                    }),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                      child: Consumer(builder: (context, ref, child) {
                        String hoveredValue = ref.watch(hoverProvider);
                        print("");
                        return InkWell(
                            onTap: () {
                              mOnTab(1);
                            },
                            onHover: (value) {
                              if (value) {
                                ref.read(hoverProvider.notifier).state = "ourwork";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Text("Our work", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "ourwork")));
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                      child: Consumer(builder: (context, ref, child) {
                        String hoveredValue = ref.watch(hoverProvider);
                        return InkWell(
                            onTap: () {
                              mOnTab(3);
                            },
                            onHover: (value) {
                              if (value) {
                                ref.read(hoverProvider.notifier).state = "partners";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Text("Partners", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "partners")));
                      }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                      child: Consumer(builder: (context, ref, child) {
                        String hoveredValue = ref.watch(hoverProvider);
                        return InkWell(
                            onTap: () {
                              mOnTab(5);
                            },
                            onHover: (value) {
                              if (value) {
                                ref.read(hoverProvider.notifier).state = "culture";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Text("Culture", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "culture")));
                      }),
                    ),
                  ],
                )),

                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02, right: SizeConfig.getScreenWidth(context) * 0.025),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        ref.read(hoverProvider.notifier).state = "getInTouchAppbar";
                      } else {
                        ref.read(hoverProvider.notifier).state = "";
                      }
                    },
                    child: Consumer(builder: (context, ref, child) {
                      String hoveredValue = ref.watch(hoverProvider);
                      return FilledButton(
                          onPressed: () {
                            mOnTab(7);
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: hoveredValue == "getInTouchAppbar" ? Colors.white : AppColors.primaryColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppColors.primaryColor)),
                          ),
                          child: Text(
                            "Get In Touch",
                            style: TextStyle(color: hoveredValue == "getInTouchAppbar" ? AppColors.primaryColor : Colors.white),
                          ));
                    }),
                  ),
                )
              ],
            ),
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
                          padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.03),
                          child: Row(children: [
                            FaIcon(
                              FontAwesomeIcons.mobile,
                              size: SizeConfig.getScreenWidth(context) * 0.013,
                              color: Colors.black54,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    if (value) {
                                      ref.read(hoverProvider.notifier).state = "phone";
                                    } else {
                                      ref.read(hoverProvider.notifier).state = "";
                                    }
                                  },
                                  child: Consumer(builder: (context, ref, child) {
                                    String hoveredValue = ref.watch(hoverProvider);
                                    return Text("+91 (917) 660 0681", style: TxtStyle.smallWhiteTxt(context, isHovered: hoveredValue == "phone"));
                                  })),
                            )
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                            FaIcon(FontAwesomeIcons.solidEnvelope, size: SizeConfig.getScreenWidth(context) * 0.013, color: Colors.black54),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    if (value) {
                                      ref.read(hoverProvider.notifier).state = "mail";
                                    } else {
                                      ref.read(hoverProvider.notifier).state = "";
                                    }
                                  },
                                  child: Consumer(builder: (context, ref, child) {
                                    String hoveredValue = ref.watch(hoverProvider);
                                    return Text("sathish@telitsolutions.in",
                                        style: TxtStyle.smallWhiteTxt(context, isHovered: hoveredValue == "mail"));
                                  })),
                            )
                          ]),
                        )
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(right: SizeConfig.getScreenWidth(context) * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Consumer(builder: (context, ref, child) {
                            String hoveredValue = ref.watch(hoverProvider);
                            return InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  if (value) {
                                    ref.read(hoverProvider.notifier).state = "facebook";
                                  } else {
                                    ref.read(hoverProvider.notifier).state = "";
                                  }
                                },
                                child: SvgPicture.asset("assets/facebook.svg",
                                    color: hoveredValue == "facebook" ? AppColors.secondaryAlterColor : Colors.black54,
                                    width: SizeConfig.getScreenWidth(context) * 0.015));
                          }),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Consumer(builder: (context, ref, child) {
                              String hoveredValue = ref.watch(hoverProvider);
                              return InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    if (value) {
                                      ref.read(hoverProvider.notifier).state = "instagram";
                                    } else {
                                      ref.read(hoverProvider.notifier).state = "";
                                    }
                                  },
                                  child: SvgPicture.asset("assets/instagram.svg",
                                      color: hoveredValue == "instagram" ? AppColors.secondaryAlterColor : Colors.black54,
                                      width: SizeConfig.getScreenWidth(context) * 0.015));
                            }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Consumer(builder: (context, ref, child) {
                              String hoveredValue = ref.watch(hoverProvider);
                              return InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    if (value) {
                                      ref.read(hoverProvider.notifier).state = "linkedin";
                                    } else {
                                      ref.read(hoverProvider.notifier).state = "";
                                    }
                                  },
                                  child: SvgPicture.asset("assets/linkedin.svg",
                                      color: hoveredValue == "linkedin" ? AppColors.secondaryAlterColor : Colors.black54,
                                      width: SizeConfig.getScreenWidth(context) * 0.015));
                            }),
                          ),
                        ],
                      ),
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
                  child: Text("Telit Solutions", style: GoogleFonts.oxanium(fontSize: 25, color: Colors.black54, fontWeight: FontWeight.bold)),
                ),
                Expanded(
                    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Consumer(builder: (context, ref, child) {
                    String hoveredValue = ref.watch(hoverProvider);
                    return InkWell(
                        onTap: () {
                          mOnTab(0);
                        },
                        onHover: (value) {
                          if (value) {
                            ref.read(hoverProvider.notifier).state = "home";
                          } else {
                            ref.read(hoverProvider.notifier).state = "";
                          }
                        },
                        child: Text("Home", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "home")));
                  }),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                    child: Consumer(builder: (context, ref, child) {
                      String hoveredValue = ref.watch(hoverProvider);
                      print("");
                      return InkWell(
                          onTap: () {
                            mOnTab(1);
                          },
                          onHover: (value) {
                            if (value) {
                              ref.read(hoverProvider.notifier).state = "ourwork";
                            } else {
                              ref.read(hoverProvider.notifier).state = "";
                            }
                          },
                          child: Text("Our work", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "ourwork")));
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                    child: Consumer(builder: (context, ref, child) {
                      String hoveredValue = ref.watch(hoverProvider);
                      return InkWell(
                          onTap: () {
                            mOnTab(3);
                          },
                          onHover: (value) {
                            if (value) {
                              ref.read(hoverProvider.notifier).state = "partners";
                            } else {
                              ref.read(hoverProvider.notifier).state = "";
                            }
                          },
                          child: Text("Partners", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "partners")));
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02),
                    child: Consumer(builder: (context, ref, child) {
                      String hoveredValue = ref.watch(hoverProvider);
                      return InkWell(
                          onTap: () {
                            mOnTab(5);
                          },
                          onHover: (value) {
                            if (value) {
                              ref.read(hoverProvider.notifier).state = "culture";
                            } else {
                              ref.read(hoverProvider.notifier).state = "";
                            }
                          },
                          child: Text("Culture", style: TxtStyle.greyTxt(context, isHovered: hoveredValue == "culture")));
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.getScreenWidth(context) * 0.02, right: SizeConfig.getScreenWidth(context) * 0.025),
                    child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        if (value) {
                          ref.read(hoverProvider.notifier).state = "getInTouchAppbar";
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Consumer(builder: (context, ref, child) {
                        String hoveredValue = ref.watch(hoverProvider);
                        return FilledButton(
                            onPressed: () {
                              mOnTab(7);
                            },
                            style: FilledButton.styleFrom(
                              backgroundColor: hoveredValue == "getInTouchAppbar" ? Colors.white : AppColors.primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppColors.primaryColor)),
                            ),
                            child: Text(
                              "Get In Touch",
                              style: TextStyle(color: hoveredValue == "getInTouchAppbar" ? AppColors.primaryColor : Colors.white),
                            ));
                      }),
                    ),
                  )
                ]))
              ],
            ),
          )
        ],
      );
    }());
  }

  mOnTab(int i) {
    widget.controller.scrollToIndex(i, preferPosition: AutoScrollPosition.begin, duration: Duration(seconds: 2));
  }
}
