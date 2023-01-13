import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  String hint;
  final TextAlign textAlign;
  final double padding;

  CommonTextField(
      {super.key,
      required this.hint,
      required this.textAlign,
      required this.padding});

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      child: Container(
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
          )),
    );
  }
}
