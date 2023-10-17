import 'package:dhu/next_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(home: MyHomeWidget()));
}

class MyHomeWidget extends StatefulWidget {
  _MyHomeState createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHomeWidget> {
  String _title = "Hello Flutter";

  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_title, style: TextStyle(color: Colors.blue)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _title = "Button Pressed";
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NextPage();
                }));
              },
              child: Icon(Icons.favorite))
        ],
      ),
    ));
  }
}
