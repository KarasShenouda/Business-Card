import 'package:flutter/material.dart';

class Basketball extends StatefulWidget {
  @override
  _BasketballState createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int teamAScore = 0;
  int teamBScore = 0;
  bool isDarkMode = true;

  TextEditingController teamAController = TextEditingController(text: "Team A");
  TextEditingController teamBController = TextEditingController(text: "Team B");

  void addPoints(String team, int points) {
    setState(() {
      if (team == 'A') {
        teamAScore += points;
      } else {
        teamBScore += points;
      }
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final dividerColor = isDarkMode ? Colors.white : Colors.black;
    final buttonColor = isDarkMode ? Colors.white : Colors.black;
    final buttonTextColor = isDarkMode ? Colors.black : Colors.white;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Score Counter',
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: isDarkMode ? Colors.grey[900] : Colors.grey[300],
          title: Text('Basketball Score Counter',
              style: TextStyle(color: textColor)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: textColor,
              ),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  buildTeamColumn(teamAController, teamAScore, 'A', textColor,
                      buttonColor, buttonTextColor),
                  Container(width: 2, color: dividerColor),
                  buildTeamColumn(teamBController, teamBScore, 'B', textColor,
                      buttonColor, buttonTextColor),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: resetScores,
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: buttonTextColor,
                ),
                child: Text('Reset Scores'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTeamColumn(
    TextEditingController nameController,
    int score,
    String team,
    Color textColor,
    Color buttonColor,
    Color buttonTextColor,
  ) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              controller: nameController,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: textColor),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: textColor),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('$score',
              style: TextStyle(
                  fontSize: 48, fontWeight: FontWeight.bold, color: textColor)),
          SizedBox(height: 30),
          buildPointButton(team, 1, buttonColor, buttonTextColor),
          buildPointButton(team, 2, buttonColor, buttonTextColor),
          buildPointButton(team, 3, buttonColor, buttonTextColor),
        ],
      ),
    );
  }

  Widget buildPointButton(
    String team,
    int points,
    Color buttonColor,
    Color buttonTextColor,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () => addPoints(team, points),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: buttonTextColor,
          minimumSize: Size(120, 40),
        ),
        child: Text('Add $points Point${points > 1 ? 's' : ''}'),
      ),
    );
  }
}
