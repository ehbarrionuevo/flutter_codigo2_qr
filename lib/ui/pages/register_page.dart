import 'package:codigo2_qr/ui/general/colors.dart';
import 'package:codigo2_qr/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandSecondaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Column(
                children: [
                  divider20,
                  Container(
                    width: 48,
                    height: 4.5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  divider20,
                  Text(
                    "Nuevo registro",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff1E1E1E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  divider6,
                  Text(
                    "Por favor ingresa todos los datos solicitados a continuación",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.6,
                      color: Color(0xff1E1E1E).withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  divider30,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
