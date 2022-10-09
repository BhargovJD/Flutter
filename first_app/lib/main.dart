import 'package:flutter/material.dart';

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
      print(_qIndex);

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
        Text(questions[_qIndex]),
        ElevatedButton(
          child: Text("Answer 1"),
          onPressed: _answerQuestion,
        ),
         ElevatedButton(
          child: Text("Answer 2"),
          onPressed: _answerQuestion,
        ),
         ElevatedButton(
          child: Text("Answer 3"),
          onPressed: null,
        ),
         ElevatedButton(
          child: Text("Answer 4"),
          onPressed: ()=>print("Anon Function"),
        ),
         ElevatedButton(
          child: Text("Answer 5"),
          onPressed: (){
            print("Anonn Function");
            },
        ),
      ],
    )
    ));
  }
}