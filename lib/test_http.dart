import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {
  List data;

  Future<String> _getData() async
  {
    http.Response response = await http.get(
      "https://jsonplaceholder.typicode.com/posts/1",
      headers: {
        "Accept" : "application/json"
      }
    );
    data = JSON.decode(response.body);
    data.map((item){

    });
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Align(
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: RaisedButton(
                  onPressed: this._getData
                )
              ),
              ListView.builder(
                itemCount: this.data == null ? 0 : this.data.length,
                itemBuilder: (BuildContext context,int index){
                  
                }
              )
            ]  
          )
        ) 
    );
  }
}