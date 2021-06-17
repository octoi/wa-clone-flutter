import 'package:flutter/material.dart';
import 'package:wa_clone/utils/data.dart';
import 'package:wa_clone/widgets/profile_card.dart';

class CreateProfile extends StatelessWidget {
  final ProfileCardContent content;

  const CreateProfile({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileCard(
          profile: content.profile,
          title: content.title,
          subTitle: content.subTitle,
          time: content.time,
          howManyToRead: content.howManyToRead,
          hasNewMessage: content.hasNewMessage,
        ),
        Divider(),
      ],
    );
  }
}
