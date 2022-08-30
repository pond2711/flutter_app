import 'package:flutter/material.dart';
class NU extends StatefulWidget {
 //change when reload app
 const NU({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 State<NU> createState() => _HomePageState();
}
class _HomePageState extends State<NU> {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: Center(
 child: Text(
 "Hello NU", 
 style: TextStyle(fontSize: 40),
 
 ),
 ),
 );
 }
}