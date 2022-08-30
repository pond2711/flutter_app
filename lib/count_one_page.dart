import 'package:flutter/material.dart';
class CountOne extends StatefulWidget {
 const CountOne({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 State<CountOne> createState() => _CountOneState();
}
class _CountOneState extends State<CountOne> {
 int _counter = 0;
 void _increaseCounter() {
 setState(() {
 _counter++;
 });
 } //increase counter
 void _decreaseCounter() {
 setState(() {
 _counter--;
 });
 } //decrease counter
 void _resetCounter() {
 setState(() {
 _counter = 0;
 });
 } //reset counter
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
 const Text(
 'You have pushed the button (times):',
 ),
 Text(
 '$_counter',
 style: Theme.of(context).textTheme.headline2,
 ),
 const Text(
 'x10 times:',
 ),
 Text(
 '${_counter * 10}',
 style: Theme.of(context).textTheme.headline2,
 ),
 ],
 ),
 ),
 floatingActionButton: Padding(
 padding: EdgeInsets.only(left: 30),
 child: Row(
 crossAxisAlignment: CrossAxisAlignment.end,
 children: [
 FloatingActionButton(
 onPressed: _increaseCounter,
 child: Icon(
 Icons.add,
 color: Colors.white,
 ),
 tooltip: 'Increase',
 ),
 Expanded(child: Container()),
 FloatingActionButton(
 onPressed: _resetCounter,
 child: Icon(
 Icons.restart_alt,
 color: Colors.red,
 ),
 tooltip: 'Reset',
 ),
 Expanded(child: Container()),
 FloatingActionButton(
 onPressed: _decreaseCounter,
 child: Icon(
 Icons.remove,
 color: Colors.white,
 ),
 tooltip: 'Decrease',
 ),
 ],
 ),
 ),
 );
 }
}