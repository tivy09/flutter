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
      title: 'BMI Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {}, child: Image.asset('lib/assets/1.jpg')))
        ],
      ),
    );
  }
}
