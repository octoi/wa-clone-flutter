import 'package:flutter/material.dart';
import 'package:wa_clone/screens/dummy_screen.dart';
import 'package:wa_clone/screens/home_screen.dart';
import 'package:wa_clone/screens/status_screen.dart';
import 'package:wa_clone/utils/constants.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
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
            bottom: TabBar(
              physics: BouncingScrollPhysics(),
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DummyScreen(title: "CAMERA"),
              HomeScreen(),
              StatusScreen(),
              DummyScreen(title: "CALLS"),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
            backgroundColor: appLightGreen,
          ),
        ),
      ),
    );
  }
}
