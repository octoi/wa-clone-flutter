import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  final String title;

  const DummyScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
