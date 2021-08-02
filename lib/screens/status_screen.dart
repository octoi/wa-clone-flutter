import 'package:flutter/material.dart';
import 'package:wa_clone/utils/data.dart';
import 'package:wa_clone/widgets/status_card.dart';

class StatusScreen extends StatelessWidget {
  final currentUser = profileList[0];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          StatusCard(
            profile: currentUser.profile,
            title: currentUser.title,
            time: currentUser.time,
            isMine: true,
          )
        ],
      ),
    );
  }
}
