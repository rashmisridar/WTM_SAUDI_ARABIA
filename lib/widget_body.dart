import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WidgetBody extends StatefulWidget {
  @override
  _WidgetBodyState createState() => _WidgetBodyState();
}

class _WidgetBodyState extends State<WidgetBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 100,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset("asset/ic_nature.jpg",
                height: double.infinity,
                width: double.infinity,),
              Positioned(
                top: 70,
                left: 30,
                child: Text("Welcome to WTM Saudi Arabia",
                  style: TextStyle(color: Colors.white,
                  fontSize: 20),),
              )

            ],
          ),
        ),
      ],
    );
  }
}
