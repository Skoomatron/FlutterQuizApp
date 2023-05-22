import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';

import 'main_screen.dart';

class ScaffoldScreen extends StatefulWidget {
  const ScaffoldScreen({super.key});

  @override
  State<ScaffoldScreen> createState() {
    return _ScaffoldScreenState();
  }
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = MainScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return   MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.deepPurple, Colors.black], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}