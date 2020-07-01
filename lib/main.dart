import 'package:flutter/material.dart';
import 'package:flutterapp/widget_body.dart';
//starting point of the app
void main()=>runApp(BasicWidget());

class BasicWidget extends StatefulWidget {
  @override
  _BasicWidgetState createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {

  bool topBottomDrawerClick=false;
  bool btnClicked = false;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        canvasColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.blue,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.arrow_forward_ios),
        ),
        //for scaffold context
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(0xFF202125),
          //in ios title places in the centre so given as left aligned
          centerTitle: false,
          titleSpacing: 0.0,
          automaticallyImplyLeading: false,
          title: Container(
            child: (FlatButton.icon(highlightColor: Colors.black,
                onPressed:(()
                {
                  if(btnClicked!=true)
                  {
                    setState(() {
                       topBottomDrawerClick=true;
                      _scaffoldKey.currentState.openDrawer();
                    });
                  }
                }), icon:Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 24,
                ), label: Text(
                  "Setting",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ),
        drawer: topBottomDrawerClick?TopDrawer():BottomDrawer(),
        body: WidgetBody(),
        bottomNavigationBar: Builder(
          builder: (BuildContext context) {
            return BottomAppBar(
              color:Color(0xFF202125),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        icon: Icon(Icons.home),
                        onPressed: () {

                          if(!btnClicked)
                          {
                            setState(() {
                              topBottomDrawerClick = false;
                            });
                            Scaffold.of(context).openDrawer();
                        }

                        }),
                    IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        icon: Icon(Icons.camera),
                        onPressed: () {

                        }),
                    IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        icon: Icon(Icons.verified_user),
                        onPressed: () {


                        }),
                    IconButton(
                        iconSize: 25,
                        color: Colors.white,
                        icon: Icon(Icons.filter),
                        onPressed: () {


                        }),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



class TopDrawer extends StatefulWidget {
  @override
  _TopDrawerState createState() => _TopDrawerState();
}

class _TopDrawerState extends State<TopDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child:Container(
        color:Color(0xFF202125),
        child: Center(child: Text("Top Drawer",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}

class BottomDrawer extends StatefulWidget {
  @override
  _BottomDrawerState createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child:  Container(
        color:Color(0xFF202125),
      child: Center(child: Text("Bootom Drawer",style: TextStyle(color: Colors.white),)),
    ),
    );
  }
}