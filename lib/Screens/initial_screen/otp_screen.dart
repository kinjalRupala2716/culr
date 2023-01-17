import 'dart:async';
import 'dart:developer';

import 'package:fantasy_cult/Screens/app_screens/my_contacts.dart';
import 'package:fantasy_cult/Screens/common_widget/common_button.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final otpController = TextEditingController();
  FocusNode pinputFocus = FocusNode();
  Timer? timer;
  int start = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GetColor().getColorFromHex(AppColors().golden),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: GetColor().getColorFromHex(AppColors().appBlack),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          height: MediaQuery.of(context).size.height / 1.1,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/logos/fantasylogo1.png"),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    AppStrings.verificationCode,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      AppStrings.verificationNote,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Pinput(
                    focusNode: pinputFocus,
                    controller: otpController,
                    toolbarEnabled: true,
                    length: 6,
                    keyboardType: TextInputType.number,
                    closeKeyboardWhenCompleted: true,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 7,
                        // height: 40, //MediaQuery.of(context).size.height / 20,
                        // width: 40, //MediaQuery.of(context).size.width / 7,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: GetColor().getColorFromHex(AppColors().golden),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.0,
                          ),
                        ),
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 24)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          startTimer();
                          log("click");
                        },
                        child: Text(
                          AppStrings.resendOtp,
                          style: TextStyle(
                              color: start == 0
                                  ? GetColor()
                                      .getColorFromHex(AppColors().golden)
                                  : Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "00 : $start",
                        style: TextStyle(
                            fontSize: 15,
                            color: start == 0 ? Colors.grey : Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CommonButton(
                    text: AppStrings.verify,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyContactsScreen(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
