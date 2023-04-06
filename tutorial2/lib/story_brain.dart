import 'story.dart';

class StoryBrain {
  int _counter = 0;

  // To keep the questions and answers as matching pairs in a list object
  List<Story> _StoryBank = [
    Story(story: 'Are plants always green?', answer: false),
    Story(story: 'Are boats always float?', answer: false),
    Story(
        story: 'Approximately one quarter of human bones are in the feet',
        answer: true),
    Story(story: 'Some cats are actually allergic to humans', answer: true),
    Story(
        story: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Story(story: 'A slug\'s blood is green.', answer: true),
    Story(
        story: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answer: true),
    Story(
        story: 'It is illegal to pee in the Ocean in Portugal.', answer: true),
    Story(
        story:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Story(
        story:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Story(
        story:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    Story(
        story:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    Story(story: 'Google was originally called \"Backrub\".', answer: true),
    Story(
        story:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answer: true),
    Story(
        story:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true)
  ];

  void nextQuestion() {
    _counter++;
  }

  String getQuestion() {
    return _StoryBank[_counter].story;
  }

  bool getAnswer() {
    return _StoryBank[_counter].answer;
  }

  void resetCounter() {
    _counter = 0;
  }

  int getTotalQuestion() {
    return _StoryBank.length;
  }

  bool endOfQuestion() {
    if (_counter == _StoryBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
