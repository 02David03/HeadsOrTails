import 'package:flutter/material.dart';

class moeda extends StatefulWidget {
  int choice;
  moeda(this.choice);
  @override
  _moedaState createState() => _moedaState();
}

class _moedaState extends State<moeda> {
  @override
  Widget build(BuildContext context) {
    _wichCoin(){
      print(widget.choice);
      if(widget.choice == 0){
        return Image(image: AssetImage('images/moeda_cara.png'));
      } else return Image(image: AssetImage('images/moeda_coroa.png'));
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 50),
                  child:_wichCoin()
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image(image: AssetImage('images/botao_voltar.png'))
              )
            ],
          )
      ),
    );
  }
}
