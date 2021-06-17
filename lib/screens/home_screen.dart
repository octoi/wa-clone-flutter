import 'package:flutter/material.dart';
import 'package:wa_clone/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ProfileCard(),
        ],
      ),
    );
  }
}
