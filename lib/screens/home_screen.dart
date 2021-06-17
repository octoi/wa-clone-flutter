import 'package:flutter/material.dart';
import 'package:wa_clone/utils/data.dart';
import 'package:wa_clone/widgets/create_profile.dart';

class HomeScreen extends StatelessWidget {
  generateCards() {
    return profileList.map((profile) {
      return CreateProfile(content: profile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          ...generateCards(),
        ],
      ),
    );
  }
}
