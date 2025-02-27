import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String output = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.centerRight,
              child: Text(
                output == "" ? "0" : output,
                style: TextStyle(color: Colors.black, fontSize: 55),
              ),
            ),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output = "";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "C",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
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
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "<-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
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
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "%",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "/";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "/",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "7";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "7",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "8";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "8",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "9";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "9",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "x";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "x",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "4";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "4",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "5";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "5",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "6";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "6",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "-";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "1";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "2";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "2",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "3";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "3",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "+";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "+",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += "0";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      output += ".";
                    });
                  },
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    ".",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
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
                      minimumSize: Size(70, 75),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  icon: Text(
                    "=",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
