import 'dart:math';

import 'package:cara_coroa/moeda.dart';
import 'package:flutter/material.dart';

class game extends StatefulWidget {
  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  _setCoin(){
    int choice = Random().nextInt(2);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => moeda(choice)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Padding(padding: EdgeInsets.only(bottom: 20),
              child: Image(image: AssetImage('images/logo.png'))
              ),
              GestureDetector(
                onTap: () => _setCoin(),
                child: Image(image: AssetImage('images/botao_jogar.png'))
              )
            ],
          ),)
      ),
    );
  }
}
