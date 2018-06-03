import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: Text('My app name')
          ),
          body: Container(
            color:Colors.white10,
            child: new Center(
              child:Text(
                "Hello there",
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                  color: Colors.black87,
                  fontSize: 42.0
                )
              ),
            )
          )
        )
      );
  }
}