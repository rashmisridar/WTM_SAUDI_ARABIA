import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WidgetBody extends StatefulWidget {
  @override
  _WidgetBodyState createState() => _WidgetBodyState();
}

class _WidgetBodyState extends State<WidgetBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 250,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset("asset/ic_nature.jpg",
                    height: double.infinity,
                    width: double.infinity,),
                  Center(
                    child: Text("Welcome to WTM",
                      style: TextStyle(color: Colors.white,
                      fontSize: 20),),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
