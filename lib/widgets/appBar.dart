import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:telit_solutions/controller/generalController.dart';
import 'package:telit_solutions/resource/appClass.dart';
import 'package:telit_solutions/resource/colors.dart';

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
    return Container(
        height: 70,
        child: () {
          ScreenType scrType = AppClass().getScreenType(context);
          if (scrType == ScreenType.mobile || scrType == ScreenType.tab) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                ],
              ),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: AppColors.secondaryColor,
                height: 40,
                child: Row(
                  children: [],
                ),
              )
            ],
          );
        }());
  }

  mOnTab(int i) {
    widget.controller.scrollToIndex(i, preferPosition: AutoScrollPosition.begin);
  }
}
