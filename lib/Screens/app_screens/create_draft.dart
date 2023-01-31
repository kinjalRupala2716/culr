import 'package:fantasy_cult/Screens/common_widget/common_appbar.dart';
import 'package:fantasy_cult/Screens/common_widget/common_bottom_navigation.dart';
import 'package:fantasy_cult/Screens/common_widget/common_textfield.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class CreateDraftScreen extends StatefulWidget {
  const CreateDraftScreen({super.key});

  @override
  State<CreateDraftScreen> createState() => _CreateDraftScreenState();
}

class _CreateDraftScreenState extends State<CreateDraftScreen> {
  final pages = [
    const HomeTab(),
    const MyContests(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CommonBottomNavigation(),
        backgroundColor: GetColor().getColorFromHex(AppColors().appBlack),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: const CommonAppBar()),
        body: pages[pageIndex]);
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String fixedvalueforstate = 'Select Type';
  var leagueType = ['Select Type', 'Free League', 'Private League'];

  String fixedvalueforteamMembers = "1";
  var teamMembers = ['1', '2', '3', '4', '5'];

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = picked.toString();
      });
    }
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
        timeController.text = pickedTime.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GetColor().getColorFromHex(AppColors().appBlack),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
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
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.choosePackage,
                style: TextStyle(
                  fontSize: 18,
                  color: GetColor().getColorFromHex(AppColors().golden),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                AppStrings.information,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: GetColor().getColorFromHex(AppColors().golden),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        controller: dateController,
                        onTap: () {
                          _selectDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          hintText: AppStrings.selectDOB,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: GetColor()
                                .getColorFromHex(AppColors().hintColor),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: GetColor().getColorFromHex(AppColors().golden),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        controller: timeController,
                        onTap: () {
                          _selectTime(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          hintText: AppStrings.selectDOB,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: GetColor()
                                .getColorFromHex(AppColors().hintColor),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    AppStrings.selectType,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  myDropDownforLeague(),
                  const SizedBox(
                    height: 10,
                  ),
                  commonTextField(
                      hint: AppStrings.leagueNameHint,
                      textAlign: TextAlign.start,
                      padding: 10),
                  const SizedBox(
                    height: 10,
                  ),
                  commonTextField(
                      hint: AppStrings.teamNameHint,
                      textAlign: TextAlign.start,
                      padding: 10),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    AppStrings.selectTeamMember,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  teamMembersList(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppStrings.choosePlan,
                    style: TextStyle(
                        color: GetColor().getColorFromHex(AppColors().golden),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Basic",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 0",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Advance",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 100",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Professional",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 400",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myDropDownforLeague() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: GetColor().getColorFromHex(AppColors().golden),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: GetColor().getColorFromHex(AppColors().golden),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            items: leagueType.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                fixedvalueforstate = newValue!;
              });
            },
            value: fixedvalueforstate,
          ),
        ),
      ),
    );
  }

  Widget teamMembersList() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: GetColor().getColorFromHex(AppColors().golden),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: GetColor().getColorFromHex(AppColors().golden),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            items: teamMembers.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                fixedvalueforteamMembers = newValue!;
              });
            },
            value: fixedvalueforteamMembers,
          ),
        ),
      ),
    );
  }
}

class MyContests extends StatefulWidget {
  const MyContests({super.key});
  @override
  State<MyContests> createState() => _MyContestsState();
}

class _MyContestsState extends State<MyContests> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String fixedvalueforstate = 'Select Type';
  var leagueType = ['Select Type', 'Free League', 'Private League'];

  String fixedvalueforteamMembers = "1";
  var teamMembers = ['1', '2', '3', '4', '5'];

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = picked.toString();
      });
    }
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
        timeController.text = pickedTime.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GetColor().getColorFromHex(AppColors().appBlack),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
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
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.choosePackage,
                style: TextStyle(
                  fontSize: 18,
                  color: GetColor().getColorFromHex(AppColors().golden),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                AppStrings.information,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: GetColor().getColorFromHex(AppColors().golden),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        controller: dateController,
                        onTap: () {
                          _selectDate(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          hintText: AppStrings.selectDOB,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: GetColor()
                                .getColorFromHex(AppColors().hintColor),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: GetColor().getColorFromHex(AppColors().golden),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        controller: timeController,
                        onTap: () {
                          _selectTime(context);
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          hintText: AppStrings.selectDOB,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: GetColor()
                                .getColorFromHex(AppColors().hintColor),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    AppStrings.selectType,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  myDropDownforLeague(),
                  const SizedBox(
                    height: 10,
                  ),
                  commonTextField(
                      hint: AppStrings.leagueNameHint,
                      textAlign: TextAlign.start,
                      padding: 10),
                  const SizedBox(
                    height: 10,
                  ),
                  commonTextField(
                      hint: AppStrings.teamNameHint,
                      textAlign: TextAlign.start,
                      padding: 10),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    AppStrings.selectTeamMember,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  teamMembersList(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppStrings.choosePlan,
                    style: TextStyle(
                        color: GetColor().getColorFromHex(AppColors().golden),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Basic",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 0",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Advance",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 100",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Text(
                              "Professional",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: GetColor().getColorFromHex(
                                    AppColors().golden,
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            Text(
                              "Rs. 400",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: GetColor()
                                    .getColorFromHex(AppColors().appBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GetColor()
                                      .getColorFromHex(AppColors().golden)),
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: GetColor()
                                        .getColorFromHex(AppColors().appBlack)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myDropDownforLeague() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: GetColor().getColorFromHex(AppColors().golden),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: GetColor().getColorFromHex(AppColors().golden),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            items: leagueType.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                fixedvalueforstate = newValue!;
              });
            },
            value: fixedvalueforstate,
          ),
        ),
      ),
    );
  }

  Widget teamMembersList() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: GetColor().getColorFromHex(AppColors().golden),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: GetColor().getColorFromHex(AppColors().golden),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            items: teamMembers.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                fixedvalueforteamMembers = newValue!;
              });
            },
            value: fixedvalueforteamMembers,
          ),
        ),
      ),
    );
  }
}
