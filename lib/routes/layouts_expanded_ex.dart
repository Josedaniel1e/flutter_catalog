import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Expanded() objects takes all available space, and each Expanded gets the
    // portion of space according to it's flex.
    // SizedBox() instead has fixed height/width.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            child: Text('Item1: flex=1'),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
            child: Text('Item2: flex=2'),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            child: Text('Item3, flex=3'),
          ),
        ),
      ],
    );
  }
}
