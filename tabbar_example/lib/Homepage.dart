import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text("Notification Clicked"));

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: "Show snackbar",
              onPressed: () {
                print("Showed");
              }),
          IconButton(
              icon: Icon(Icons.close),
              tooltip: 'Close',
              onPressed: () {
                print("Closed");
              })
        ],
        title: Text("Create appbar with flutter"),
      ),
      body: Container(child: Text("Create tabbar with Flutter")),
    );
  }
}
