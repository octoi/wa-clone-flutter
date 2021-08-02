import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Container(
      //       margin: EdgeInsets.only(bottom: 10.0),
      //       child: FloatingActionButton(
      //         mini: true,
      //         onPressed: () {},
      //       ),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {},
      //       backgroundColor: Colors.red,
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
