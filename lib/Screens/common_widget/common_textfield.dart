import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class commonTextField extends StatefulWidget {
  String hint;
   TextAlign textAlign;
   double padding;

  commonTextField(
      {super.key,
      required this.hint,
      required this.textAlign,
      required this.padding});

  @override
  State<commonTextField> createState() => _commonTextFieldState();
}

// ignore: camel_case_types
class _commonTextFieldState extends State<commonTextField> {
  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.only(left: widget.padding),
          child: TextFormField(
            style: TextStyle(
                color: GetColor().getColorFromHex(AppColors().golden)),
            textAlign: widget.textAlign,
            cursorColor: GetColor().getColorFromHex(AppColors().golden),
            decoration: InputDecoration(
                hintText: widget.hint,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: GetColor().getColorFromHex(AppColors().hintColor),
                )),
          ),
        ));
  }
}
