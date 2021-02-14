import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //run no Widget MaterialApp do tipp Material Design
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoaNumero =0;
  String _mensagem = "Pode Entrar!";

  void changePeople(int x) {
    setState(() { //refaz a tela com a alteração do número de pessoas
      _pessoaNumero += x;
      if (_pessoaNumero <0) {
        _mensagem = "Como assim? Negativo?";
      } else if (_pessoaNumero <= 10) {
        _mensagem = "Pode entrar!";
      } else {
        _mensagem = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1080.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Pessoas: $_pessoaNumero",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      onPressed: () {changePeople(1);
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      onPressed: () {changePeople(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      )),
                ),
              ],
            ),
            Text(
              _mensagem,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            )
          ],
        )
      ],
    );
  }
}

