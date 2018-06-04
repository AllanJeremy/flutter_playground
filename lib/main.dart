import 'package:flutter/material.dart';
import 'custom_tile.dart';
import 'custom_divider.dart';
import 'counter.dart';

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
              Counter(),
              CustomTile(
                color: Colors.orange[600],
                iconColor: Colors.orange[300],
                text:'Fast food',
                icon:Icons.fastfood
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.blue[600],
                iconColor: Colors.blue[300],
                text:'Hotels',
                icon:Icons.hotel
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.green[600],
                iconColor: Colors.green[300],
                text:'Traveling',
                icon:Icons.card_travel
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.purple[600],
                iconColor: Colors.purple[300],
                text:'Shopping',
                icon:Icons.shopping_cart
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.blueGrey[600],
                iconColor: Colors.blueGrey[300],
                text:'WiFi',
                icon:Icons.wifi
              ),
              CustomDivider(),
              CustomTile(
                color: Colors.red[600],
                iconColor: Colors.red[300],
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