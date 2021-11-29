import 'package:animalproject/pages/camera.dart';
import 'package:animalproject/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Animal Detection Application'),
        ),
        body: GridView.count(
            childAspectRatio: 3 / 2,
            crossAxisCount: 2,
            children: [
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Image.asset(
              //     'assets/aaa.jpg',
              //     width: 120,
              //     height: 200,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // SizedBox(height: 100),
              SizedBox(height: 150),
              SizedBox(height: 150),
              SizedBox(height: 150),
              SizedBox(height: 150),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.white,
                    child: Builder(
                        builder: (context) => InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomePage()));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.orange)),
                                width: 200,
                                height: 150,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.image,
                                          color: Colors.orange),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'From Gallery',
                                      ),
                                    ]))))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Builder(
                        builder: (context) => InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Camera()));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.orange)),
                                width: 200,
                                height: 150,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.camera,
                                          color: Color.fromRGBO(255, 165, 0, 1),
                                          size: 30.0),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'From Camera',
                                      ),
                                    ]))))),
              ),
            ]),
      ),
    );
  }
}
