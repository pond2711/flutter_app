import 'package:flutter/material.dart';

 class StackNewPage extends StatefulWidget {
  const StackNewPage({Key? key}) : super(key: key);

  @override
  State<StackNewPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StackNewPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Text('1',
          style: TextStyle(
            fontSize: 100.0,
          color: Colors.red),
          ),
          ),
        Positioned(
        top: 0.0,
        right: 0.0,
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('2',
        style: TextStyle(fontSize: 100.0, color: Colors.blue)),
      )),
        Positioned(
        bottom: 10.0,
        left: 10.0,
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('3',
        style: TextStyle(fontSize: 100.0, color: Colors.green)),
      )),
        Positioned(
        bottom: 10.0,
        right: 10.0,
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('4',
        style: TextStyle(fontSize: 100.0, color: Colors.orange)),
      )),
        Center(
        
        child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('5',
        style: TextStyle(fontSize: 100.0, color: Colors.purple)),
      )),
      ],
    );
  }
}