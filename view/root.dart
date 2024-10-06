import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/controller/generalController.dart';
import 'package:telit_solutions/resource/appClass.dart';
import 'package:telit_solutions/view/footer/footer.dart';
import 'package:telit_solutions/view/getInTouch/getItTouch.dart';
import 'package:telit_solutions/view/ourCulture/ourCulture.dart';
import 'package:telit_solutions/view/howWeWork/howWeWork.dart';
import 'package:telit_solutions/view/intro/intro.dart';
import 'package:telit_solutions/view/mission/mission.dart';
import 'package:telit_solutions/view/ourCulture/ourCulture.dart';
import 'package:telit_solutions/view/partners/partners.dart';
import 'package:telit_solutions/view/vision/vision.dart';
import 'package:telit_solutions/widgets/appBar.dart';


class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final mScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              ref.read(scrollControlProvider.notifier).state = false;
            } else if (direction == ScrollDirection.forward) {
              ref.read(scrollControlProvider.notifier).state = true;
            }
            return true;
          },
          child: Container(
            color: Colors.white,
            height: AppClass().getMqHeight(context),
            child: Column(
              children: [
                ActionBar(mScrollController),
                Expanded(
                  child: () {
                    ScreenType scrType = AppClass().getScreenType(context);
                    return Consumer(builder: (context, ref, child) {
                      bool scrollHandler = ref.watch(scrollHandlerProvider);
                      return ListView(
                        physics: scrollHandler ? AlwaysScrollableScrollPhysics() : NeverScrollableScrollPhysics(),
                        controller: mScrollController,
                        children: [
                          AutoScrollTag(key: ValueKey(0), controller: mScrollController, index: 0, child: Intro(mScrollController)),
                          AutoScrollTag(key: ValueKey(1), controller: mScrollController, index: 1, child: HowWeWork(mScrollController)),
                          AutoScrollTag(key: ValueKey(2), controller: mScrollController, index: 2, child: Mission(mScrollController)),
                          AutoScrollTag(key: ValueKey(3), controller: mScrollController, index: 3, child: Partners(mScrollController)),
                          AutoScrollTag(key: ValueKey(4), controller: mScrollController, index: 4, child: Vision(mScrollController)),
                          AutoScrollTag(key: ValueKey(5), controller: mScrollController, index: 5, child: Ourculture(mScrollController)),
                          AutoScrollTag(key: ValueKey(6), controller: mScrollController, index: 6, child: GetItTouch(mScrollController)),
                          AutoScrollTag(key: ValueKey(7), controller: mScrollController, index: 7, child: Footer(mScrollController)),
                        ],
                      );
                    });
                  }(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
