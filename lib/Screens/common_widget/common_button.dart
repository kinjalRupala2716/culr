import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 20,
            decoration: BoxDecoration(
                color: GetColor().getColorFromHex(AppColors().golden),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ))),
      ),
    );
  }
}
