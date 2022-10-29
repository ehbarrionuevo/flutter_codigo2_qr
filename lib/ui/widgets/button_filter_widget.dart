

import 'package:codigo2_qr/ui/general/colors.dart';
import 'package:flutter/material.dart';

class ButtonFilterWidget extends StatelessWidget {
  const ButtonFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 14.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kBrandPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "Hoy",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15.0
        ),
      ),
    );
  }
}
