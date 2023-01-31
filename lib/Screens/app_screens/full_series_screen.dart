import 'package:fantasy_cult/Screens/app_screens/private_league.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class FullSeriesScreen extends StatelessWidget {
  const FullSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: Image.asset(
            "assets/icons/cricket_background_image.png",
            fit: BoxFit.contain,
          ),
        ),
        Text(
          AppStrings.fullSeries,
          style: TextStyle(
              color: GetColor().getColorFromHex(AppColors().golden),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 00),
          child: Container(
            height: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: GetColor().getColorFromHex(AppColors().golden)),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppStrings.invitationCode,
                  hintStyle: TextStyle(
                      color: GetColor().getColorFromHex(AppColors().appBlack),
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height / 5,
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 00),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(children: [
              const Text("SA T20"),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/icons/austelianIcon.png",
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Aus",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: const Text(
                      "VS",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Column(
                    children: [
                      // Image.asset(
                      //   "assets/icons/South_Africa.png",
                      // ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/icons/South_Africa.png",
                            ),
                          ),
                        ),
                      ),

                      const Text(
                        "SA",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    color: GetColor().getColorFromHex(AppColors().golden),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: const Text("0d:0h:1h"),
              )
            ]),
          ),
        ),
        commonContainer(AppStrings.createDraft, context, () {}),
        commonContainer(AppStrings.joinPublic, context, () {}),
        commonContainer(
          AppStrings.joinPrivate,
          context,
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivateLeagueScreen(),
              ),
            );
          },
        )
      ],
    );
  }

  Widget commonContainer(
      String text, BuildContext context, Function() onperss) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 00),
      child: GestureDetector(
        onTap: onperss,
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: GetColor().getColorFromHex(AppColors().golden)),
          child: Center(
              child: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
