import 'package:dhu/next_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MaterialApp(home: MyHomeWidget()));
}

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({super.key});

  @override
  _MyHomeState createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHomeWidget> {
  String _title = "Hello Flutter";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_title, style: const TextStyle(color: Colors.blue)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _title = "Button Pressed";
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NextPage();
                }));
              },
              child: const Icon(Icons.favorite))
        ],
      ),
    ));
  }
}
