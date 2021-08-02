import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';
import 'package:wa_clone/utils/data.dart';
import 'package:wa_clone/widgets/status_card.dart';

class StatusScreen extends StatelessWidget {
  final currentUser = profileList[0];

  List<Widget> getStatus() {
    return profileList.map((user) {
      return StatusCard(
        profile: user.profile,
        title: user.title,
        time: user.time,
        isSeen: user.hasNewMessage,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StatusCard(
            profile: currentUser.profile,
            title: 'My Status',
            time: '52 minutes ago',
            isMine: true,
          ),
          SizedBox(height: 10.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Text(
              "Recent Updates",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
                color: appSecondaryTextColor,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          ...getStatus()
        ],
      ),
    );
  }
}
