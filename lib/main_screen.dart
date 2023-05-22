import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250),
          const SizedBox(height: 30),
          const Text(
            'Welcome To Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.sailing
            ),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.black, shadowColor: Colors.white),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 32),
              ))
        ],
      ),
    );
  }
}
