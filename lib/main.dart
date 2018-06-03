import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('App title'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_alert),
                iconSize: 24.0,
                color: Colors.white,
                onPressed: printHello,
              )
            ],
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 40.0),
            child: Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MyRectangle(
                    width:300.0,
                    height:200.0,
                    text:'I love black',
                    color: Colors.black87,
                  ),
                  MyRectangle(
                    width:300.0,
                    height:200.0,
                    text:'I love blue',
                    color: Colors.blue,
                  ),
                ]
              )
            ),
          )
        )
      );
  }
}

class MyRectangle extends StatelessWidget
{
  final double width,height;
  final String text;
  final Color color;

  MyRectangle({this.width,this.height,this.text,this.color});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top:15.0),
      color: this.color,
      width: this.width,
      height: this.height,
      child: Center(
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 32.0,
            color:Colors.white70
          )
        )
      ),
    );
  }
}

//Prints hello to the screen
void printHello()
{
  print("Hello");
}