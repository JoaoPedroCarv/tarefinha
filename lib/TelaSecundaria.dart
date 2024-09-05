import 'package:flutter/material.dart';
import 'package:navegacao/TelaTerc.dart';


class TelaSecundaria extends StatefulWidget{
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria>{
  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Tela Secundaria'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Text("Segunda Tela",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraTela())
                );
              }, 
              child: Text('Ir para segunda tela'),
              
              )
              
            ],
          ),
        ),
      );
  }
}