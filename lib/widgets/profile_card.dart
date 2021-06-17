import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_960_720.jpg',
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Wick",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: appPrimaryTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "How are you man",
                        style: TextStyle(
                          color: appSecondaryTextColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "19:14",
                style: TextStyle(
                  color: appSecondaryTextColor,
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
