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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
          ],
        ),
      ),
    );
  }
}
