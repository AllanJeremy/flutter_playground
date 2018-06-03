import 'package:flutter/material.dart';

//Custom tile widget ~ from the Udacity Quiz 13 in the flutter course (first section)
class CustomTile extends StatelessWidget
{
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  final double  height = 100.0;
  final double borderRadius = 50.0;

  CustomTile({this.icon,this.text,this.color,this.iconColor});

  @override
  Widget build(BuildContext context)
  {
    assert(debugCheckHasMaterial(context));
    return Material(
      borderRadius: BorderRadius.all(
        Radius.elliptical(this.borderRadius,this.borderRadius)
      ),
      child:Container(
        height:this.height,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          splashColor:this.color,
          highlightColor:this.color,
          onTap: this._handleTap,
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  this.icon,
                  color:this.iconColor,
                  size: 60.0,
                ),
              ),
              Text(
                this.text,
                style: TextStyle(
                  color:Colors.black54,
                  fontSize: 24.0,
                ),
              )
            ]
          )
        ) 
      )
    );
  }

  void _handleTap([String initiator=''])
  {
    String text = initiator.isEmpty ? "Tapped!" : "Tapped by $initiator !";
    print(text);
  }
}
