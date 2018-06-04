import 'package:flutter/material.dart';

//The counter
class Counter extends StatefulWidget
{
  @override 
  _CounterState createState() => new _CounterState();
}

//State class
class _CounterState extends State<Counter>
{
  int counter = 0;

  //Increment numbers
  void increment()
  {
    setState((){
      counter ++;
    });
  }
  //Build override
  @override 
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child:Center(
        child: new Column(
          children: <Widget>[
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.blue
              )
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              child: RaisedButton(
                
                padding: EdgeInsets.symmetric(
                  vertical:8.0,
                  horizontal:16.0
                ),
                child: Text(
                  "Increment",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                  ),
                ),
                color: Colors.black87,
                textColor: Colors.white70,
                onPressed: increment,
              )
            )
          ]
        )
      )
    );
  }
}