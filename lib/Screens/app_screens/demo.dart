// import 'package:fantasy_cult/util/color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DemoScreen extends StatefulWidget {
//   const DemoScreen({super.key});

//   @override
//   State<DemoScreen> createState() => _DemoScreenState();
// }

// class _DemoScreenState extends State<DemoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Container(
//             height: 700,
//             width: double.maxFinite,
//             color: Colors.black,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 200,
//                   width: double.maxFinite,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: 10,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           clipBehavior: Clip.none,
//                           children: [
//                             Container(
//                               height: 157,
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.white),
//                               padding: const EdgeInsets.all(0),
//                               child: Column(children: [
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       const Text(
//                                         "west Series",
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Container(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 5, vertical: 2),
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(5),
//                                             color: Colors.red),
//                                         child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Container(
//                                                 height: 10,
//                                                 width: 10,
//                                                 decoration: const BoxDecoration(
//                                                     shape: BoxShape.circle,
//                                                     color: Colors.white),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text("LIVE",
//                                                   style: TextStyle(
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       color: Colors.white))
//                                             ]),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 1,
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().appBlack),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/englandicon.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "England",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/ballIcon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(50 over)348/7",
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold),
//                                           )
//                                         ],
//                                       ),
//                                       const SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/srilanka.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "sri lanka",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/baticon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(34.7 over)182/4",
//                                             style: TextStyle(
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ]),
//                             ),
//                             Positioned(
//                               bottom: -15,
//                               child: Container(
//                                 height: 30,
//                                 width: 106,
//                                 // padding: EdgeInsets.all(15),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().golden),
//                                 ),
//                                 child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Image.asset(
//                                           "assets/icons/youTubeIcon.png"),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       const Text(
//                                         "WATCH LIVE",
//                                         style: TextStyle(fontSize: 10),
//                                       )
//                                     ]),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 200,
//                   width: double.maxFinite,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: 10,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           clipBehavior: Clip.none,
//                           children: [
//                             Container(
//                               height: 157,
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.white),
//                               padding: const EdgeInsets.all(0),
//                               child: Column(children: [
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       const Text(
//                                         "west Series",
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Container(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 5, vertical: 2),
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(5),
//                                             color: Colors.red),
//                                         child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Container(
//                                                 height: 10,
//                                                 width: 10,
//                                                 decoration: const BoxDecoration(
//                                                     shape: BoxShape.circle,
//                                                     color: Colors.white),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text("LIVE",
//                                                   style: TextStyle(
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       color: Colors.white))
//                                             ]),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 1,
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().appBlack),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/englandicon.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "England",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/ballIcon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(50 over)348/7",
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold),
//                                           )
//                                         ],
//                                       ),
//                                       const SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/srilanka.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "sri lanka",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/baticon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(34.7 over)182/4",
//                                             style: TextStyle(
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ]),
//                             ),
//                             Positioned(
//                               bottom: -15,
//                               child: Container(
//                                 height: 30,
//                                 width: 106,
//                                 // padding: EdgeInsets.all(15),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().golden),
//                                 ),
//                                 child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Image.asset(
//                                           "assets/icons/youTubeIcon.png"),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       const Text(
//                                         "WATCH LIVE",
//                                         style: TextStyle(fontSize: 10),
//                                       )
//                                     ]),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 200,
//                   width: double.maxFinite,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: 10,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           clipBehavior: Clip.none,
//                           children: [
//                             Container(
//                               height: 157,
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.white),
//                               padding: const EdgeInsets.all(0),
//                               child: Column(children: [
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20, vertical: 10),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       const Text(
//                                         "west Series",
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       Container(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 5, vertical: 2),
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(5),
//                                             color: Colors.red),
//                                         child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Container(
//                                                 height: 10,
//                                                 width: 10,
//                                                 decoration: const BoxDecoration(
//                                                     shape: BoxShape.circle,
//                                                     color: Colors.white),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text("LIVE",
//                                                   style: TextStyle(
//                                                       fontSize: 12,
//                                                       fontWeight:
//                                                           FontWeight.bold,
//                                                       color: Colors.white))
//                                             ]),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 1,
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().appBlack),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.all(20),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/englandicon.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "England",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/ballIcon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(50 over)348/7",
//                                             style: TextStyle(
//                                                 fontSize: 14,
//                                                 fontWeight: FontWeight.bold),
//                                           )
//                                         ],
//                                       ),
//                                       const SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Image.asset(
//                                                   "assets/icons/srilanka.png"),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               const Text(
//                                                 "sri lanka",
//                                                 style: TextStyle(
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                               const SizedBox(
//                                                 width: 10,
//                                               ),
//                                               Image.asset(
//                                                   "assets/icons/baticon.png")
//                                             ],
//                                           ),
//                                           const Text(
//                                             "(34.7 over)182/4",
//                                             style: TextStyle(
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ]),
//                             ),
//                             Positioned(
//                               bottom: -15,
//                               child: Container(
//                                 height: 30,
//                                 width: 106,
//                                 // padding: EdgeInsets.all(15),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: GetColor()
//                                       .getColorFromHex(AppColors().golden),
//                                 ),
//                                 child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Image.asset(
//                                           "assets/icons/youTubeIcon.png"),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                       const Text(
//                                         "WATCH LIVE",
//                                         style: TextStyle(fontSize: 10),
//                                       )
//                                     ]),
//                               ),
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 // Container(
//                 //   height: 150,
//                 //   width: 200,
//                 //   color: Colors.white,
//                 // ),
//                 // Container(
//                 //   height: 150,
//                 //   width: 200,
//                 //   color: Colors.white,
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "Geeks For Geeks",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
