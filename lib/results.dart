import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.results});

  final List<Map<String, Object>> results;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: results.map((result) {
            final bool isCorrect =
                result['selected_answer'] == result['correct_answer'];
            final Color currentColor =
                isCorrect ? Colors.greenAccent : Colors.redAccent;

            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: currentColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(((result['question_index'] as int) + 1)
                                .toString()),
                          ),
                          Text(
                            result['question'] as String,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        result['selected_answer'] as String,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(result['correct_answer'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.greenAccent,
                          ))
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
