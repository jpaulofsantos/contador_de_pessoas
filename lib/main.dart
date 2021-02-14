import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //run no Widget MaterialApp do tipp Material Design
      title: "Contador de Pessoas",
      home: Stack(
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
                "Pessoas: 0",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "-1",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        )),
                  ),
                ],
              ),
              Text(
                "Pode entrar!",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
              )
            ],
          )
        ],
      )));
}
