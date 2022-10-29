import 'package:codigo2_qr/ui/general/colors.dart';
import 'package:codigo2_qr/ui/widgets/button_filter_widget.dart';
import 'package:codigo2_qr/ui/widgets/general_widget.dart';
import 'package:codigo2_qr/ui/widgets/item_list_widget.dart';
import 'package:codigo2_qr/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandSecondaryColor,
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          width: 48,
                          height: 4.5,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        divider40,
                        Text(
                          "Historial de Escaneos",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff1E1E1E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        divider6,
                        Text(
                          "En esta sección podrás visualizar el historial de elementos registrados, también puedes agregar nuevos ingresos cuando tú prefieras.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            height: 1.6,
                            color: Color(0xff1E1E1E).withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        divider30,

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonFilterWidget(
                              text: "Hoy",
                              isSelected: true,
                            ),
                            dividerWidth14,
                            ButtonFilterWidget(
                              text: "Todos",
                              isSelected: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ItemListWidget(),
                          ItemListWidget(),
                          ItemListWidget(),
                          ItemListWidget(),
                          ItemListWidget(),
                          ItemListWidget(),
                          ItemListWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
