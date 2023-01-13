import 'dart:developer';

import 'package:fantasy_cult/Screens/common_widget/common_button.dart';
import 'package:fantasy_cult/Screens/common_widget/common_textField.dart';
import 'package:fantasy_cult/Screens/initial_screen/otp_screen.dart';
import 'package:fantasy_cult/Screens/initial_screen/registration_screen.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEmailLogin = false;
  bool isPhoneLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: GetColor().getColorFromHex(AppColors().golden),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: GetColor().getColorFromHex(AppColors().appBlack),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: MediaQuery.of(context).size.height / 1.1,
                width: double.maxFinite,
                child: isEmailLogin != true
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset("assets/logos/fantasylogo1.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: CommonTextField(
                              hint: AppStrings.numberHint,
                              textAlign: TextAlign.center,
                              padding: 0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                            child: CommonButton(
                                text: AppStrings.sendOtp,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const OtpScreen();
                                      },
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.white,
                              ),
                              const Text(
                                AppStrings.or,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          _loginMethods(context, AppStrings.email,
                              "assets/logos/emaillogo.png", () {
                            setState(() {
                              isEmailLogin = true;
                            });
                            log("isEmail___________$isEmailLogin");
                          }),
                          _loginMethods(context, AppStrings.google,
                              "assets/logos/googlelogo.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                          _loginMethods(context, AppStrings.facebook,
                              "assets/logos/facebooklogo.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                          _loginMethods(context, AppStrings.apple,
                              "assets/logos/applelogowhite.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset("assets/logos/fantasylogo1.png"),
                          ),
                          // _textFormField(AppStrings.emailHint),
                          // _textFormField(AppStrings.passwordHint),
                          CommonTextField(
                            hint: AppStrings.emailHint,
                            textAlign: TextAlign.center,
                            padding: 0,
                          ),
                          CommonTextField(
                            hint: AppStrings.passwordHint,
                            textAlign: TextAlign.center,
                            padding: 0,
                          ),

                          _loginButton(
                              context, AppStrings.continueLogin, () {}),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.white,
                              ),
                              const Text(
                                AppStrings.or,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          _loginMethods(context, AppStrings.phone,
                              "assets/logos/phonelogo.png", () {
                            setState(() {
                              // isPhoneLogin = true;
                              isEmailLogin = false;
                            });
                            // print("isPhone___________$isPhoneLogin");
                            log("isEmail___________$isPhoneLogin");
                          }),
                          _loginMethods(context, AppStrings.google,
                              "assets/logos/googlelogo.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                          _loginMethods(context, AppStrings.facebook,
                              "assets/logos/facebooklogo.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                          _loginMethods(context, AppStrings.apple,
                              "assets/logos/applelogowhite.png", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          }),
                        ],
                      )),
          ],
        ));
  }

  Widget _loginButton(BuildContext context, String text, Function() onpress) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(
                color: GetColor().getColorFromHex(AppColors().golden),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ))),
      ),
    );
  }

  Widget _loginMethods(
      BuildContext context, String text, imagePath, Function() onpress) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 20,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: GetColor().getColorFromHex(AppColors().golden),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: GetColor().getColorFromHex(AppColors().golden),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFormField(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 20,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: GetColor().getColorFromHex(AppColors().golden),
              ),
              borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            textAlign: TextAlign.center,
            cursorColor: GetColor().getColorFromHex(AppColors().golden),
            decoration: InputDecoration(
                hintText: text,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: GetColor().getColorFromHex(AppColors().hintColor),
                )),
          )),
    );
  }
}
