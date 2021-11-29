import 'package:animalproject/pages/camera.dart';
import 'package:animalproject/pages/home.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 35.0),
              Container(
                height: 400,
                child: Image(
                  image: AssetImage("assets/start.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Animal Detection Application',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange))
                  ])),
              SizedBox(height: 10.0),
              Text(
                'Animal Detection Application',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
