import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';

class StatusCard extends StatelessWidget {
  final String profile;
  final String title;
  final String time;
  final bool isMine;
  final bool isSeen;

  StatusCard({
    required this.profile,
    required this.title,
    required this.time,
    this.isMine = false,
    this.isSeen = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      isSeen ? appLightGreen : appSecondaryTextColor,
                  radius: 30.0,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: appSecondaryTextColor,
                      backgroundImage: NetworkImage(profile),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: appPrimaryTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      time,
                      style: TextStyle(
                        color: appSecondaryTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            isMine
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    color: appSecondaryTextColor,
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
