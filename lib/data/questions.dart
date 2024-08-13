import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
    QuizQuestion(
    'Which of the following is true about Flutter?',
    [
      'Flutter is an open-source UI toolkit',
      'Flutter can only be used for mobile applications',
      'Flutter is a backend framework',
      'Flutter does not support web development',
    ],
  ),
  QuizQuestion(
    'What is the function of the pubspec.yaml file in a Flutter project?',
    [
      'To manage dependencies',
      'To define routes',
      'To style the UI',
      'To handle user inputs',
    ],
  ),
  QuizQuestion(
    'What is a Future in Dart?',
    [
      'A way to handle asynchronous operations',
      'A type of widget',
      'A function that returns an integer',
      'A method to build UIs',
    ],
  ),
  QuizQuestion(
    'How can you display a list of items in Flutter?',
    [
      'Using a ListView widget',
      'Using a Column widget',
      'Using a Row widget',
      'Using a Stack widget',
    ],
  ),

];