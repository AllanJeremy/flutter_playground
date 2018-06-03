import 'package:flutter/material.dart';
import 'custom_tile.dart';
import 'custom_divider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Services on Demand'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                iconSize: 24.0,
                color: Colors.white,
                onPressed: printHello,
              )
            ],
          ),
          body: new ListView(
            children: <Widget>[
              CustomTile(
                color: Colors.orangeAccent,
                text:'Fast food',
                icon:Icons.fastfood
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.blue,
                text:'Hotels',
                icon:Icons.hotel
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.greenAccent,
                text:'Traveling',
                icon:Icons.card_travel
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.purple[200],
                text:'Shopping',
                icon:Icons.shopping_cart
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.black87,
                text:'WiFi',
                icon:Icons.wifi
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.red[400],
                text:'Meetups',
                icon:Icons.streetview
              ),
            ]
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