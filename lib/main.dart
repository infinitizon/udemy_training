import 'package:flutter/material.dart';

import './TextControl.dart';
import './TextOutput.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _myText = 'Initial Text';
  var _counter = 0;
  void _changeText() {
    setState(() {
      _counter +=1;
      _myText = 'Changed Text ' + _counter.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Question chooser'),
          ),
          body: Column(
            children: <Widget>[
              TextOutput(_myText),
              TextControl(_changeText),
            ],
          )),
    );
  }
}
