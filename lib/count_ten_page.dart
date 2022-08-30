import 'package:flutter/material.dart';
class CountTen extends StatefulWidget {
 const CountTen({Key? key, required this.title}) : super(key: key);
final String title;
 @override
 State<CountTen> createState() => _CountTenState();
}
class _CountTenState extends State<CountTen> {
 int _counter = 0;
 void _increaseCounter() {
 setState(() {
 _counter = _counter + 10;
 });
 } //increase counter
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
 floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
 floatingActionButton: FloatingActionButton.extended(
 onPressed: _increaseCounter,
 tooltip: 'Increase Counter',
 icon: const Icon(
 Icons.token,
 color: Colors.white,
 ),
 label: const Text('Add up'), foregroundColor: Colors.white,
 backgroundColor: Colors.blueGrey,
 ),
 );
 }
}