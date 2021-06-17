import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appDarkGreen,
          elevation: 0.0,
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
