import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class MyContactsScreen extends StatefulWidget {
  const MyContactsScreen({super.key});

  @override
  State<MyContactsScreen> createState() => _MyContactsScreenState();
}

class _MyContactsScreenState extends State<MyContactsScreen> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Mycontests(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(5),
          height: 60,
          decoration: BoxDecoration(
            color: GetColor().getColorFromHex(AppColors().golden),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                  print("pageIndex____________$pageIndex");
                },
                child: Container(
                  padding: const EdgeInsets.only(),
                  color: pageIndex == 0
                      ? GetColor().getColorFromHex(AppColors().appBlack)
                      : GetColor().getColorFromHex(AppColors().golden),
                  child: Row(children: [
                    pageIndex == 0
                        ? Image.asset(
                            "assets/icons/home_icon.png",
                            color:
                                GetColor().getColorFromHex(AppColors().golden),
                          )
                        : Image.asset(
                            "assets/icons/home_icon.png",
                            color: GetColor()
                                .getColorFromHex(AppColors().appBlack),
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
                            ? GetColor().getColorFromHex(AppColors().golden)
                            : GetColor().getColorFromHex(AppColors().appBlack),
                      ),
                    )
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                  print("pageIndex____________$pageIndex");
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: pageIndex == 1
                      ? GetColor().getColorFromHex(AppColors().appBlack)
                      : GetColor().getColorFromHex(AppColors().golden),
                  child: Row(children: [
                    pageIndex == 1
                        ? Image.asset(
                            "assets/icons/troffy_icon.png",
                            color:
                                GetColor().getColorFromHex(AppColors().golden),
                          )
                        : Image.asset(
                            "assets/icons/troffy_icon.png",
                            color: GetColor()
                                .getColorFromHex(AppColors().appBlack),
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
                            ? GetColor().getColorFromHex(AppColors().golden)
                            : GetColor().getColorFromHex(AppColors().appBlack),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: GetColor().getColorFromHex(AppColors().golden),
        body: pages[pageIndex]
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //         color: GetColor().getColorFromHex(AppColors().appBlack),
        //         borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(50),
        //           topRight: Radius.circular(50),
        //         ),
        //       ),
        //       height: MediaQuery.of(context).size.height - 78,
        //       width: double.maxFinite,
        //       child: SingleChildScrollView(
        //         child: Column(
        //           children: [
        //             SizedBox(
        //               height: MediaQuery.of(context).size.height / 4,
        //               width: double.maxFinite,
        //               child: ListView.builder(
        //                 shrinkWrap: true,
        //                 itemCount: 10,
        //                 scrollDirection: Axis.horizontal,
        //                 itemBuilder: (context, index) {
        //                   return Padding(
        //                     padding: const EdgeInsets.all(20),
        //                     child: Stack(
        //                       alignment: Alignment.bottomCenter,
        //                       clipBehavior: Clip.none,
        //                       children: [
        //                         Container(
        //                           height: 157,
        //                           width: MediaQuery.of(context).size.width / 1.3,
        //                           decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(20),
        //                               color: Colors.white),
        //                           padding: const EdgeInsets.all(0),
        //                           child: Column(children: [
        //                             Padding(
        //                               padding: const EdgeInsets.symmetric(
        //                                   horizontal: 20, vertical: 10),
        //                               child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   const Text(
        //                                     "west Series",
        //                                     style: TextStyle(
        //                                         fontSize: 14,
        //                                         fontWeight: FontWeight.bold),
        //                                   ),
        //                                   Container(
        //                                     padding: const EdgeInsets.symmetric(
        //                                         horizontal: 5, vertical: 2),
        //                                     decoration: BoxDecoration(
        //                                         borderRadius:
        //                                             BorderRadius.circular(5),
        //                                         color: Colors.red),
        //                                     child: Row(
        //                                         mainAxisAlignment:
        //                                             MainAxisAlignment
        //                                                 .spaceBetween,
        //                                         children: [
        //                                           Container(
        //                                             height: 10,
        //                                             width: 10,
        //                                             decoration:
        //                                                 const BoxDecoration(
        //                                                     shape:
        //                                                         BoxShape.circle,
        //                                                     color: Colors.white),
        //                                           ),
        //                                           const SizedBox(
        //                                             width: 10,
        //                                           ),
        //                                           const Text("LIVE",
        //                                               style: TextStyle(
        //                                                   fontSize: 12,
        //                                                   fontWeight:
        //                                                       FontWeight.bold,
        //                                                   color: Colors.white))
        //                                         ]),
        //                                   )
        //                                 ],
        //                               ),
        //                             ),
        //                             Container(
        //                               height: 1,
        //                               color: GetColor()
        //                                   .getColorFromHex(AppColors().appBlack),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.all(20),
        //                               child: Column(
        //                                 crossAxisAlignment:
        //                                     CrossAxisAlignment.start,
        //                                 children: [
        //                                   Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Row(
        //                                         mainAxisAlignment:
        //                                             MainAxisAlignment
        //                                                 .spaceBetween,
        //                                         children: [
        //                                           Image.asset(
        //                                               "assets/icons/englandicon.png"),
        //                                           const SizedBox(
        //                                             width: 10,
        //                                           ),
        //                                           const Text(
        //                                             "England",
        //                                             style: TextStyle(
        //                                                 fontSize: 14,
        //                                                 fontWeight:
        //                                                     FontWeight.bold),
        //                                           ),
        //                                           const SizedBox(
        //                                             width: 10,
        //                                           ),
        //                                           Image.asset(
        //                                               "assets/icons/ballIcon.png")
        //                                         ],
        //                                       ),
        //                                       const Text(
        //                                         "(50 over)348/7",
        //                                         style: TextStyle(
        //                                             fontSize: 14,
        //                                             fontWeight: FontWeight.bold),
        //                                       )
        //                                     ],
        //                                   ),
        //                                   const SizedBox(
        //                                     height: 10,
        //                                   ),
        //                                   Row(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.spaceBetween,
        //                                     children: [
        //                                       Row(
        //                                         mainAxisAlignment:
        //                                             MainAxisAlignment
        //                                                 .spaceBetween,
        //                                         children: [
        //                                           Image.asset(
        //                                               "assets/icons/srilanka.png"),
        //                                           const SizedBox(
        //                                             width: 10,
        //                                           ),
        //                                           const Text(
        //                                             "sri lanka",
        //                                             style: TextStyle(
        //                                                 fontSize: 14,
        //                                                 fontWeight:
        //                                                     FontWeight.bold),
        //                                           ),
        //                                           const SizedBox(
        //                                             width: 10,
        //                                           ),
        //                                           Image.asset(
        //                                               "assets/icons/baticon.png")
        //                                         ],
        //                                       ),
        //                                       const Text(
        //                                         "(34.7 over)182/4",
        //                                         style: TextStyle(
        //                                           fontSize: 14,
        //                                           fontWeight: FontWeight.bold,
        //                                         ),
        //                                       )
        //                                     ],
        //                                   )
        //                                 ],
        //                               ),
        //                             )
        //                           ]),
        //                         ),
        //                         Positioned(
        //                           bottom: -15,
        //                           child: Container(
        //                             height: 30,
        //                             width: 106,
        //                             // padding: EdgeInsets.all(15),
        //                             decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(20),
        //                               color: GetColor()
        //                                   .getColorFromHex(AppColors().golden),
        //                             ),
        //                             child: Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.center,
        //                                 children: [
        //                                   Image.asset(
        //                                       "assets/icons/youTubeIcon.png"),
        //                                   const SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   const Text(
        //                                     "WATCH LIVE",
        //                                     style: TextStyle(fontSize: 10),
        //                                   )
        //                                 ]),
        //                           ),
        //                         )
        //                       ],
        //                     ),
        //                   );
        //                 },
        //               ),
        //             ),
        //             const SizedBox(
        //               height: 20,
        //             ),
        //             Container(
        //               padding:
        //                   const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //               decoration: BoxDecoration(
        //                 color: Colors.red,
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               child: const Text(
        //                 "UPCOMIMG MATCHES",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //             ),
        //             const SizedBox(
        //               height: 20,
        //             ),
        //             SizedBox(
        //               height: 200,
        //               child: ListView.separated(
        //                 padding: EdgeInsets.all(20),
        //                 itemCount: 10,
        //                 shrinkWrap: true,
        //                 scrollDirection: Axis.horizontal,
        //                 itemBuilder: (context, index) {
        //                   return Container(
        //                     // height: MediaQuery.of(context).size.height / 2,
        //                     width: MediaQuery.of(context).size.width / 2.5,
        //                     padding: const EdgeInsets.all(20),
        //                     decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: BorderRadius.circular(10)),
        //                     child: Column(children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                         children: [
        //                           Column(
        //                             children: [
        //                               Image.asset(
        //                                   "assets/icons/austelianIcon.png"),
        //                               const Text(
        //                                 "Aus",
        //                                 style: TextStyle(
        //                                     fontSize: 12,
        //                                     fontWeight: FontWeight.bold),
        //                               )
        //                             ],
        //                           ),
        //                           Container(
        //                             padding: const EdgeInsets.all(5),
        //                             decoration: const BoxDecoration(
        //                                 color: Colors.red,
        //                                 shape: BoxShape.circle),
        //                             child: const Text(
        //                               "VS",
        //                               style: TextStyle(
        //                                   color: Colors.white, fontSize: 12),
        //                             ),
        //                           ),
        //                           Column(
        //                             children: [
        //                               Image.asset(
        //                                   "assets/icons/South_Africa.png"),
        //                               const Text(
        //                                 "SA",
        //                                 style: TextStyle(
        //                                     fontSize: 12,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                             ],
        //                           )
        //                         ],
        //                       ),
        //                       const SizedBox(
        //                         height: 20,
        //                       ),
        //                       const Text(
        //                         "11:30 IST | SYDNEY",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.bold),
        //                       ),
        //                       const SizedBox(
        //                         height: 20,
        //                       ),
        //                       const Text(
        //                         "24 NOV 2023",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.bold),
        //                       ),
        //                     ]),
        //                   );
        //                 },
        //                 separatorBuilder: (BuildContext context, int index) {
        //                   return const SizedBox(
        //                     width: 20,
        //                   );
        //                 },
        //               ),
        //             ),
        //             const SizedBox(
        //               height: 20,
        //             ),
        //             Container(
        //               padding:
        //                   const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //               decoration: BoxDecoration(
        //                 color: Colors.red,
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               child: const Text(
        //                 "COMPLETED MATCHES",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //             ),
        //             const SizedBox(
        //               height: 20,
        //             ),
        //             SizedBox(
        //               height: 200,
        //               child: ListView.separated(
        //                 padding: EdgeInsets.all(20),
        //                 itemCount: 10,
        //                 shrinkWrap: true,
        //                 scrollDirection: Axis.horizontal,
        //                 itemBuilder: (context, index) {
        //                   return Container(
        //                     width: MediaQuery.of(context).size.width / 1.5,
        //                     padding: const EdgeInsets.all(20),
        //                     decoration: BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: BorderRadius.circular(10)),
        //                     child: Column(children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                         children: [
        //                           Column(
        //                             children: [
        //                               Image.asset(
        //                                 "assets/icons/austelianIcon.png",
        //                               ),
        //                               const Text(
        //                                 "Aus",
        //                                 style: TextStyle(
        //                                     fontSize: 12,
        //                                     fontWeight: FontWeight.bold),
        //                               )
        //                             ],
        //                           ),
        //                           Column(
        //                             children: [
        //                               Container(
        //                                 padding: const EdgeInsets.all(5),
        //                                 decoration: const BoxDecoration(
        //                                     color: Colors.red,
        //                                     shape: BoxShape.circle),
        //                                 child: const Text(
        //                                   "VS",
        //                                   style: TextStyle(
        //                                       color: Colors.white, fontSize: 12),
        //                                 ),
        //                               ),
        //                               const SizedBox(
        //                                 height: 10,
        //                               ),
        //                               const Text(
        //                                 "11:30 IST | SYDNEY",
        //                                 style: TextStyle(
        //                                     fontSize: 12,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                             ],
        //                           ),
        //                           Column(
        //                             children: [
        //                               Image.asset(
        //                                   "assets/icons/South_Africa.png"),
        //                               const Text(
        //                                 "SA",
        //                                 style: TextStyle(
        //                                     fontSize: 12,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                             ],
        //                           )
        //                         ],
        //                       ),
        //                       const SizedBox(
        //                         height: 20,
        //                       ),
        //                       const Text(
        //                         "24 NOV 2023",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.bold),
        //                       ),
        //                     ]),
        //                   );
        //                 },
        //                 separatorBuilder: (BuildContext context, int index) {
        //                   return const SizedBox(
        //                     width: 20,
        //                   );
        //                 },
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        // ],
        // ),
        );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: GetColor().getColorFromHex(AppColors().appBlack),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          height: MediaQuery.of(context).size.height - 78,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.maxFinite,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 157,
                              width: MediaQuery.of(context).size.width / 1.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(0),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "west Series",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.red),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text("LIVE",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white))
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: GetColor()
                                      .getColorFromHex(AppColors().appBlack),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/englandicon.png"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                "England",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                  "assets/icons/ballIcon.png")
                                            ],
                                          ),
                                          const Text(
                                            "(50 over)348/7",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/srilanka.png"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                "sri lanka",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                  "assets/icons/baticon.png")
                                            ],
                                          ),
                                          const Text(
                                            "(34.7 over)182/4",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            Positioned(
                              bottom: -15,
                              child: Container(
                                height: 30,
                                width: 106,
                                // padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/icons/youTubeIcon.png"),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "WATCH LIVE",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "UPCOMIMG MATCHES",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2.5,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/icons/austelianIcon.png"),
                                  const Text(
                                    "Aus",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: const Text(
                                  "VS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/icons/South_Africa.png"),
                                  const Text(
                                    "SA",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "11:30 IST | SYDNEY",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "24 NOV 2023",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "COMPLETED MATCHES",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/austelianIcon.png",
                                  ),
                                  const Text(
                                    "Aus",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                    child: const Text(
                                      "VS",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "11:30 IST | SYDNEY",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/icons/South_Africa.png"),
                                  const Text(
                                    "SA",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "24 NOV 2023",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Mycontests extends StatelessWidget {
  const Mycontests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: GetColor().getColorFromHex(AppColors().appBlack),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          height: MediaQuery.of(context).size.height - 78,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.maxFinite,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 157,
                              width: MediaQuery.of(context).size.width / 1.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              padding: const EdgeInsets.all(0),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "west Series",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.red),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text("LIVE",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white))
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: GetColor()
                                      .getColorFromHex(AppColors().appBlack),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/englandicon.png"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                "England",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                  "assets/icons/ballIcon.png")
                                            ],
                                          ),
                                          const Text(
                                            "(50 over)348/7",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  "assets/icons/srilanka.png"),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                "sri lanka",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Image.asset(
                                                  "assets/icons/baticon.png")
                                            ],
                                          ),
                                          const Text(
                                            "(34.7 over)182/4",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            Positioned(
                              bottom: -15,
                              child: Container(
                                height: 30,
                                width: 106,
                                // padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/icons/youTubeIcon.png"),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "WATCH LIVE",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "UPCOMIMG MATCHES",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2.5,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/icons/austelianIcon.png"),
                                  const Text(
                                    "Aus",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: const Text(
                                  "VS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/icons/South_Africa.png"),
                                  const Text(
                                    "SA",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "11:30 IST | SYDNEY",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "24 NOV 2023",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "COMPLETED MATCHES",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/icons/austelianIcon.png",
                                  ),
                                  const Text(
                                    "Aus",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                    child: const Text(
                                      "VS",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "11:30 IST | SYDNEY",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/icons/South_Africa.png"),
                                  const Text(
                                    "SA",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "24 NOV 2023",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
