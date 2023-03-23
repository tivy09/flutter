import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.title});

  final String title;

  @override
  State<QuizPage> createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Flutter APP',
          ),
        ),
      ),
      body: const DiceWidget(),
    );
  }
}

class DiceWidget extends StatelessWidget {
  const DiceWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:[
        Expanded(
          flex:7,
          child: Center(child: Text('This is were the question is going to go'
          style: TextStyle(color: Colors.white70,fontSize: 20),
          textAlign: TextAlign.center,),

        ))
      ],
    )
  }
}
