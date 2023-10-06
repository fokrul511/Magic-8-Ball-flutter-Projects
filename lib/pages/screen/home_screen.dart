import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int magicBall = 1;

  void magic8Ball() {
    setState(() {
      magicBall = 2;
      magicBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Magic 8 ball'),
      ),
      body: Center(
        child: Expanded(
          child: GestureDetector(
            onTap: () {
              magic8Ball();
            },
            child: Image(
              image: AssetImage('images/ball$magicBall.png'),
            ),
          ),
        ),
      ),
    );
  }
}
