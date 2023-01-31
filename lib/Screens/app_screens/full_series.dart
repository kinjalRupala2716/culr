import 'package:fantasy_cult/Screens/app_screens/full_series_screen.dart';
import 'package:fantasy_cult/Screens/app_screens/individual_game_screen.dart';
import 'package:fantasy_cult/Screens/common_widget/common_bottom_navigation.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class FullSeriesPage extends StatefulWidget {
  const FullSeriesPage({super.key});

  @override
  State<FullSeriesPage> createState() => _FullSeriesPageState();
}

class _FullSeriesPageState extends State<FullSeriesPage> {
  int pageIndex = 0;

  final pages = [const FullSeriesScreen(), const IndividualGameScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GetColor().getColorFromHex(AppColors().appBlack),
      bottomNavigationBar: const CommonBottomNavigation(),
      body: pages[pageIndex],
    );
  }
}
