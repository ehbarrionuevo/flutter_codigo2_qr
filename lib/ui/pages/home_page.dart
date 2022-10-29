import 'package:codigo2_qr/ui/widgets/general_widget.dart';
import 'package:codigo2_qr/ui/widgets/item_list_widget.dart';
import 'package:codigo2_qr/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.only(top: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Column(
                children: [
                  Text("Hola"),
                  Text("Hola"),
                  Text("Hola"),
                  Text("Hola"),
                  Text("Hola"),
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
