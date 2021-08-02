import 'package:flutter/material.dart';
import 'package:wa_clone/utils/constants.dart';

class StatusCard extends StatelessWidget {
  final String profile;
  final String title;
  final String time;
  final bool isMine;

  StatusCard({
    required this.profile,
    required this.title,
    required this.time,
    this.isMine = false,
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
          children: [],
        ),
      ),
    );
  }
}
