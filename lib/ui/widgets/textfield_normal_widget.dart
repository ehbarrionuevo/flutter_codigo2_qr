
import 'package:codigo2_qr/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/assets.dart';
import '../general/colors.dart';

class TextFieldNormalWidget extends StatelessWidget {
  const TextFieldNormalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(" Título"),
          ],
        ),
        divider6,
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                offset: const Offset(4, 4),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 16.0),
              hintText: "Ingrese título",
              hintStyle: TextStyle(
                color: kBrandSecondaryColor.withOpacity(0.45),
              ),
              prefixIcon: SvgPicture.asset(
                Assets.iconTitle,
                height: 20,
                color: kBrandSecondaryColor.withOpacity(0.45),
                fit: BoxFit.scaleDown,
              ),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
