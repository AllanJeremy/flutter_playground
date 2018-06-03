import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add_a_photo),
              tooltip: "Add photo",
              onPressed: null,
              color:Colors.blueAccent
            )
          ],
        ),
        body: new Center(
          child: new MyContent(icon: Icons.access_alarms,title:"Set alarm")
        )
      )
    );
  }
}

class MyContent extends StatelessWidget{

  final String title;
  final IconData icon;

  MyContent({this.title,this.icon});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: 
        new Column(
          children:<Widget>[
            new IconButton(
              icon: new Icon(this.icon),
              tooltip: this.title,
              onPressed: null,
              color:Colors.redAccent
            ),
            new Container(
              child: new Text(
                this.title,
                textDirection: TextDirection.ltr,
                style: new TextStyle(
                  fontSize: 32.0,
                  color: Colors.blueAccent
                )
              )
            )
          ]
        )
      );
  }
}

