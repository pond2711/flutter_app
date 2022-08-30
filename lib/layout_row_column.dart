import 'package:flutter/material.dart';
class RowColumnPage extends StatefulWidget {
 const RowColumnPage({Key? key}) : super(key: key);
 @override
 State<RowColumnPage> createState() => _RowColumnPageState();
}
class _RowColumnPageState extends State<RowColumnPage> {
 @override
 Widget build(BuildContext context) {
 return Column(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: [
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: <Widget>[
 Icon(Icons.home),
 Icon(Icons.star),
 Icon(Icons.favorite)
 ],
 ),
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: <Widget>[
 Icon(Icons.home),
 Icon(Icons.star),
 Icon(Icons.favorite)
 ],
 ),
 Row(
 mainAxisAlignment: MainAxisAlignment.spaceAround,
 children: <Widget>[
 Icon(Icons.home),
 Icon(Icons.star),
 Icon(Icons.favorite)
 ],
 ),
 ],
 );
 }
}