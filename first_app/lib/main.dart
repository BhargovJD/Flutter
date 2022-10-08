import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  void answerQuestion (){
    print("Answer choosen!");
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(home:Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
    ),
    body: Column(
      children: [
        Text("The question"),
        ElevatedButton(
          child: Text("Answer 1"),
          onPressed: answerQuestion,
        ),
         ElevatedButton(
          child: Text("Answer 2"),
          onPressed: answerQuestion,
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