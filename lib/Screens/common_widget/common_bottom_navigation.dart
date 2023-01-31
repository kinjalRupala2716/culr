import 'dart:developer';

import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class CommonBottomNavigation extends StatefulWidget {
  const CommonBottomNavigation({super.key});

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(5),
      height: 60,
      decoration: BoxDecoration(
        color: GetColor().getColorFromHex(AppColors().golden),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
              log("pageIndex____________$pageIndex");
            },
            child: Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              color: pageIndex == 0
                  ? GetColor().getColorFromHex(AppColors().golden)
                  : GetColor().getColorFromHex(AppColors().appBlack),
              child: Row(children: [
                const SizedBox(
                  width: 35,
                ),
                pageIndex == 0
                    ? Image.asset(
                        "assets/icons/home_icon.png",
                        color: GetColor().getColorFromHex(AppColors().appBlack),
                      )
                    : Image.asset(
                        "assets/icons/home_icon.png",
                        color: GetColor().getColorFromHex(AppColors().golden),
                      ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: pageIndex == 0
                        ? GetColor().getColorFromHex(AppColors().appBlack)
                        : GetColor().getColorFromHex(AppColors().golden),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
              log("pageIndex____________$pageIndex");
            },
            child: Container(
              margin: const EdgeInsets.only(top: 2),
              padding: const EdgeInsets.all(15),
              color: pageIndex == 1
                  ? GetColor().getColorFromHex(AppColors().golden)
                  : GetColor().getColorFromHex(AppColors().appBlack),
              child: Row(children: [
                const SizedBox(
                  width: 19,
                ),
                pageIndex == 1
                    ? Image.asset(
                        "assets/icons/troffy_icon.png",
                        color: GetColor().getColorFromHex(AppColors().appBlack),
                      )
                    : Image.asset(
                        "assets/icons/troffy_icon.png",
                        color: GetColor().getColorFromHex(AppColors().golden),
                      ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "My Contests",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: pageIndex == 1
                        ? GetColor().getColorFromHex(AppColors().appBlack)
                        : GetColor().getColorFromHex(AppColors().golden),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
