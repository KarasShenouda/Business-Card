import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Column(
        spacing: 15,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.centerRight,
            child: Text(
              output == '' ? "0" : output,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    output = '';
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Text(
                  "C",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    output = output.substring(0, output.length - 1);
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Text(
                  "<-",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    output += '%';
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Text(
                  "%",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    output += '/';
                  });
                },
                style: IconButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Text(
                  "/",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // String - expression - evaluate - result  / *
                  output = output.replaceAll('x', '*');
                  Expression exp = Parser().parse(output);

                  String result = exp
                      .evaluate(EvaluationType.REAL, ContextModel())
                      .toString();

                  setState(() {
                    output = result;
                  });
                },
                style: IconButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(190, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                icon: Text(
                  "=",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// inline if //
// condition ? if true : if false

// Center
