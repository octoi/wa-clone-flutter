import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';

class ProfileCard extends StatelessWidget {
  final String profile;
  final String title;
  final String subTitle;
  final String time;
  final hasNewMessage;
  final howManyToRead;

  const ProfileCard({
    Key? key,
    required this.profile,
    required this.title,
    required this.subTitle,
    required this.time,
    this.hasNewMessage = false,
    this.howManyToRead,
  }) : super(key: key);

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
                  radius: 30.0,
                  backgroundImage: NetworkImage(profile),
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
                      subTitle,
                      style: TextStyle(
                        color: appSecondaryTextColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: hasNewMessage
                  ? [
                      Text(
                        time,
                        style: TextStyle(
                          color: appLightGreen,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: appLightGreen,
                        ),
                        child: Center(
                          child: Text(
                            howManyToRead,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]
                  : [
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
      ),
    );
  }
}
