import 'package:flutter/material.dart';

void main() {
  runApp(Hello());
}

testeButton() {
  print("button clicado");
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
            color: Color.fromRGBO(235, 235, 235, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset("assets/igti.png", width: 90, ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hello ', style: TextStyle(fontSize: 20)),
                      Text('Flutter!', style: TextStyle(fontSize: 20))
                    ],
                  ),
                ),
                FlatButton(
                  child: Text("OK", style: TextStyle(color: Colors.white)),
                  onPressed: testeButton,
                  color: Colors.teal
                ),
                Container(
                  color: Colors.amber,
                  child: Text("Texto no container"),
                  width: 200,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 30),
                )
              ]
            )
        )
    );
  }
}
