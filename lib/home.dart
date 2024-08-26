import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome home',style: TextStyle(
              fontSize: 40,
              color: Colors.blueAccent.shade400)),
        ],
      ),
    );
  }
}
