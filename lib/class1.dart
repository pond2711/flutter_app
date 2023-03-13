import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class Class1Page extends StatefulWidget {
  const Class1Page({Key? key}) : super(key: key);

  @override
  State<Class1Page> createState() => _Class1PageState();
}

class _Class1PageState extends State<Class1Page> {
  var objFormatDouble = NumberFormat('#,##0.00');
  var objFormatInt = NumberFormat('#,##0');
  int _counter = 0;
  int _value = 1500;
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
  } 
  void _reset() {
    setState(() {
      _value = _counter*_value;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
        //  color: Colors.grey,
        //  height: 100.0,
          child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row( 
            crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have pushed the button (times) = ',
                  style: TextStyle(fontSize: 25.0)),
                  Text('$_counter',
                  style: TextStyle(fontSize: 35.0),),
                  
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$_counter x 1,500 times = ',
                  style: TextStyle(fontSize: 35.0),
                ),
                  Text('${objFormatInt.format(_counter*_value)}',
                  style: TextStyle(fontSize: 35.0,
                        color: Colors.blue),
          
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('Square root of ${objFormatInt.format(_counter*_value)} = ',
                  style: TextStyle(fontSize: 35.0),
                ),
                  Text('${objFormatDouble.format(sqrt(_counter*_value))}',
                  style: TextStyle(fontSize: 35.0,
                        color: Colors.red,
                ),
          
                ),
              ]
            ),
              
          ],
        ))  
       
    ],
        
        
    
  );
      
  }
}