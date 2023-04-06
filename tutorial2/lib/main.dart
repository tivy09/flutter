import 'package:flutter/material.dart';
import 'package:tutorial2/story_brain.dart';
import 'story.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

StoryBrain storyBrain = StoryBrain();

void main() {
  runApp(MyApp());
}

// Basic UI of the App
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: StoryPage(),
          ),
        ),
      ),
    );
  }
}

// Which is going to change the state of the widget
class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  // To check whether user answer is correct or not
  bool isCorrect = false;

  // To keep track of our current position (with regards to the questions and answers)
  int counter = 0;

  // To keep track of the score by adding some icons into it
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userChoice) {
    // if user clicked the true button and the answer is also true
    if (storyBrain.getAnswer() == userChoice) {
      isCorrect = true;
    }

    setState(
      () {
        // if user answer is correct
        if (isCorrect) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
        // if user answer is incorrect
        else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        // reset the isCorrect value
        isCorrect = false;

        // if we are at the last question, reset to the first
        // if (storyBrain.endOfQuestion()) {
        //   // Show the alert first
        //   Alert(
        //           context: context,
        //           title: "FINISH",
        //           desc:
        //               "Congratulations! You have reached the end of the quiz.")
        //       .show();

        //   storyBrain.resetCounter();
        //   scoreKeeper.clear();
        // }
        // // else we are going to proceed to the next question
        // else {
        //   storyBrain.nextQuestion();
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 7,
          child: Center(
            child: Text(
              storyBrain.getQuestion(),
              style: TextStyle(color: Colors.white70, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        // This is the true button
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.green),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => BeveledRectangleBorder())),
              child: Text('True'),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        // This is the false button
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith((states) => Colors.red),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  shape: MaterialStateProperty.resolveWith(
                      (states) => BeveledRectangleBorder())),
              child: Text('False'),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
