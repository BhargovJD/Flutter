import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var _qIndex = 0;

    void _answerQuestion (){
    // print("Answer choosen!");
    setState(() {
          _qIndex = _qIndex+1;
    });
      // print(_qIndex);

  }

  @override
  Widget build(BuildContext context){
    var questions =[
      "What\'s is your name?",
      "What\'s is your fav food?",
    ];
    return MaterialApp(home:Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
    ),
    body: Column(
      children: [
        // Text(questions.elementAt(1)),
        // Text(questions[_qIndex]),
        Question(questions[_qIndex]),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
        Answer(_answerQuestion),
      ],
    )
    ));
  }
}