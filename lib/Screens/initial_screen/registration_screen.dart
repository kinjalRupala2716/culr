import 'package:fantasy_cult/Screens/common_widget/common_button.dart';
import 'package:fantasy_cult/Screens/common_widget/common_textField.dart';
import 'package:fantasy_cult/util/app_string.dart';
import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isObscure = true;
  String fixedvalueforstate = 'Select State';
  var stateItems = [
    'Select State',
    'State 1',
    'State 2',
    'State 3',
    'State 4',
    'State 5',
  ];

  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();
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
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset("assets/logos/fantasylogo1.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextField(
                      hint: AppStrings.userNameHint,
                      textAlign: TextAlign.start,
                      padding: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextField(
                      hint: AppStrings.emailHint,
                      textAlign: TextAlign.start,
                      padding: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextField(
                      hint: AppStrings.phoneHint,
                      textAlign: TextAlign.start,
                      padding: 10,
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
                            color:
                                GetColor().getColorFromHex(AppColors().golden),
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
                            suffixIcon: IconButton(
                              onPressed: () {
                                DatePickerDialog(
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2050, 12, 01),
                                  initialDate: DateTime.now(),
                                );
                              },
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
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
                    const Text(
                      AppStrings.hintDOB,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    myDropDownforState(),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextField(
                      hint: AppStrings.referralHint,
                      textAlign: TextAlign.start,
                      padding: 10,
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
                            color:
                                GetColor().getColorFromHex(AppColors().golden),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          cursorColor:
                              GetColor().getColorFromHex(AppColors().golden),
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                            hintText: AppStrings.passwordHint,
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: GetColor()
                                  .getColorFromHex(AppColors().hintColor),
                            ),
                          ),
                          style: TextStyle(
                            color:
                                GetColor().getColorFromHex(AppColors().golden),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CommonButton(text: AppStrings.letsStart, onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

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

  Widget myDropDownforState() {
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
            items: stateItems.map((String items) {
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
}
