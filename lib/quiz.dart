// this is the starting point of the app. It is the main file of the app. It is the root widget of the app. It is the parent widget of all the other widgets. It is the widget that is passed to the runApp() method.

import 'package:flutter/material.dart';
import 'package:pro3/start_screen.dart';
import 'package:pro3/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-Screen';

  // @override
  // void initState() {   // initState() is a method of the State class that is called when the state object is created. It is called only once. It is used to initialize the state of the widget.
  //   // TODO: implement initState
  //   super.initState();
  //   activeScreen = const QuestionsScreen() ;
  // }

  void switchScreen() {
    setState(() {
      // setState() is a method of the State class that tells Flutter to redraw the UI by calling the build() method again.
      activeScreen = 'Questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget screenWidget = activeScreen ==  'Start-Screen'
    //           ? StartScreen(switchScreen)
    //           : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        body: Container(
          
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 191, 157, 255),
                Color.fromARGB(255, 93, 6, 255),
                Colors.green,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
