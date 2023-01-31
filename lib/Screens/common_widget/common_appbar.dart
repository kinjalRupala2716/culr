import 'package:fantasy_cult/util/color.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          // height: MediaQuery.of(context).size.height / 10,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.amber),
          padding: const EdgeInsets.fromLTRB(20, 35, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/navigationDrawer.png"),
              Row(
                children: [
                  Image.asset("assets/icons/notificationIcon.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: GetColor().getColorFromHex(AppColors().hintColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
  
        
  }
}
