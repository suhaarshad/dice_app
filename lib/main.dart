import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  int leftdice = 1;
  int rightdice = 1;

  void changeDice(){
    setState(() {
      leftdice = Random().nextInt(6)+1; // generate num from 1 to 6
      rightdice= Random().nextInt(6)+1; //1 to 6
      // print('$leftdice');
      // print('$rightdice');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Center(child: Text('Dice')),),
      body:Center(
        child: Row(
          children: [
            Expanded(
              child:MaterialButton(
                onPressed: (){
                  changeDice();

                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
            Expanded(
              child:MaterialButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),],
        ),
      ) ,
    );
  }
}


