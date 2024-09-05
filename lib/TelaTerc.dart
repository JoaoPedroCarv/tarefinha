import 'package:flutter/material.dart';


class TerceiraTela extends StatefulWidget{
  @override
  _TerceiraTela createState() => _TerceiraTela();
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

class _TerceiraTela extends State<TerceiraTela>{
  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Terceira tela'),
          backgroundColor: Colors.blue,
        ),
         body: Center(
          child: Column(
            children: <Widget>[
              const SwitchExample(),
              const Text("Segunda Tela",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraTela())
                );
              }, 
              child: const Text('Ir para segunda tela'),
              
              )
              
            ],
          ), 
          
        ),
      );
  }
}