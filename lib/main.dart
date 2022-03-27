import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  var questionIndex = 0;

  static var questions = [
    "What's your favourite food",
    "What's your favourite colour"
  ];

  void answerToQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(questions[questionIndex]),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 3"))
        ]),
      ),
    );
  }
}
