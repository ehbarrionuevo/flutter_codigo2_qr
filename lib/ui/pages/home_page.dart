
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Storage"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6.0),
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem ipsum dolor sit amet",),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
