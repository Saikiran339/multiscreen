import 'package:flutter/material.dart';


class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen'
        ),
      ),
      body: Container(
              color: Colors.teal,
      ),
    );
  }
}
