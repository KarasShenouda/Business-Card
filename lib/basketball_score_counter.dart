import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basketball Score Counter',
      theme: ThemeData(
        brightness: Brightness.dark, // لتعيين الوضع الليلي
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.black, // تعيين خلفية سوداء
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.amber), // تعيين النص باللون الذهبي
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.amber, // تعيين لون الأزرار باللون الذهبي
            onPrimary:
                Colors.black, // تعيين لون النص داخل الأزرار باللون الأسود
          ),
        ),
      ),
      home: ScoreCounter(),
    );
  }
}

class ScoreCounter extends StatefulWidget {
  @override
  _ScoreCounterState createState() => _ScoreCounterState();
}

class _ScoreCounterState extends State<ScoreCounter> {
  int _teamAScore = 0;
  int _teamBScore = 0;

  void _incrementTeamA(int points) {
    setState(() {
      _teamAScore += points;
    });
  }

  void _incrementTeamB(int points) {
    setState(() {
      _teamBScore += points;
    });
  }

  void _resetScores() {
    setState(() {
      _teamAScore = 0;
      _teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Score Counter'),
        backgroundColor: Colors.black, // تعيين خلفية شريط التطبيق باللون الأسود
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$_teamAScore',
                      style: TextStyle(fontSize: 48),
                    ),
                    SizedBox(height: 16), // مسافة بين النص والأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamA(1),
                      child: Text('+1 Point'),
                    ),
                    SizedBox(height: 8), // مسافة بين الأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamA(2),
                      child: Text('+2 Points'),
                    ),
                    SizedBox(height: 8), // مسافة بين الأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamA(3),
                      child: Text('+3 Points'),
                    ),
                  ],
                ),
                // خط فاصل بين الفريقين
                Container(
                  height: 200,
                  width: 1,
                  color: Colors.amber,
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$_teamBScore',
                      style: TextStyle(fontSize: 48),
                    ),
                    SizedBox(height: 16), // مسافة بين النص والأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamB(1),
                      child: Text('+1 Point'),
                    ),
                    SizedBox(height: 8), // مسافة بين الأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamB(2),
                      child: Text('+2 Points'),
                    ),
                    SizedBox(height: 8), // مسافة بين الأزرار
                    ElevatedButton(
                      onPressed: () => _incrementTeamB(3),
                      child: Text('+3 Points'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _resetScores,
              child: Text('Reset Scores'),
            ),
          ],
        ),
      ),
    );
  }
}
