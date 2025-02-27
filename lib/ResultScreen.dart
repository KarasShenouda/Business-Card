import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    // function //

    String getResult(double result) {
      if (result <= 18.5) {
        return 'You are underweight';
      } else if (result >= 18.5 && result <= 25) {
        return 'You are normal';
      } else {
        return 'You are overweight';
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
            Text(
              result.toInt().toString(),
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
            Text(
              getResult(result),
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
