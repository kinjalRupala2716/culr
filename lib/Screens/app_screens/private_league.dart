import 'package:fantasy_cult/Screens/common_widget/common_bottom_navigation.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class PrivateLeagueScreen extends StatefulWidget {
  const PrivateLeagueScreen({super.key});

  @override
  State<PrivateLeagueScreen> createState() => _PrivateLeagueScreenState();
}

class _PrivateLeagueScreenState extends State<PrivateLeagueScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: GetColor().getColorFromHex(AppColors().golden),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: GetColor().getColorFromHex(
                        AppColors().appBlack,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      AppStrings.privateLeague,
                      style: TextStyle(
                          color: GetColor().getColorFromHex(
                            AppColors().appBlack,
                          ),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.1,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: GetColor().getColorFromHex(AppColors().appBlack),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 00),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: GetColor()
                                    .getColorFromHex(AppColors().golden)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: AppStrings.invitationCode,
                                  hintStyle: TextStyle(
                                      color: GetColor().getColorFromHex(
                                          AppColors().appBlack),
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: GetColor()
                                    .getColorFromHex(AppColors().golden),
                              ),
                              child: const Text(
                                "CODE:3456",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/cricketground.png"))),
                            child: Column(
                              children: [
                                const Text(
                                  "1st inning",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 75,
                                          width: 75,
                                          decoration: BoxDecoration(
                                              color: GetColor().getColorFromHex(
                                                  AppColors().appBlack),
                                              shape: BoxShape.circle),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "AUS",
                                          style: TextStyle(
                                              color: GetColor().getColorFromHex(
                                                  AppColors().golden),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "260/4(38.4)",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 67,
                                          width: 62,
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          decoration: const BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: const Text(
                                            "VS",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 75,
                                          width: 75,
                                          decoration: BoxDecoration(
                                              color: GetColor().getColorFromHex(
                                                  AppColors().appBlack),
                                              shape: BoxShape.circle),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "AUS",
                                          style: TextStyle(
                                              color: GetColor().getColorFromHex(
                                                  AppColors().golden),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: GetColor()
                                  .getColorFromHex(AppColors().golden)),
                          child: const Text(
                            "PRIVATE\nLEAGUE",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 00),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(00, 10, 00, 10),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                color: GetColor()
                                    .getColorFromHex(AppColors().golden)),
                            child: const Text(
                              "Join",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CommonBottomNavigation(),
      ),
    );
  }
}
