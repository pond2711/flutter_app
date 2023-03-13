import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);
  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(  //กำหนดเฟรม
          width: 100.0,
          color: Colors.yellow,
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Column( //คอลัมกำหนดสีไม่ได้
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(Icons.star),
                    Icon(Icons.favorite)
                  ],
                ),
                SizedBox( //เว้นช่องว่าง
                  height: 20.0,
                  child: Text('height 20'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(Icons.star),
                    Icon(Icons.favorite)
                  ],
                ),
                SizedBox(
                  height: 40.0,
                  child: Align(
                      child: Text('height 40.0'),
                      alignment: Alignment.center), //ตำแหน่ง
                    ),
                    Expanded( //ขยายเต็มพื้นที่
                      child: Container(
                      color: Colors.red,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start, //ตำแหน่ง
                      children: <Widget>[
                        Icon(Icons.home,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow),
                        Icon(Icons.favorite,color: Colors.yellow)                    
                      ],
                    ),
                  ),
                  flex: 1, //1เท่า
                ),
                Expanded(
                  child: Container(
                  color: Colors.purple
                ),
                flex: 1,
              )

                ],
              ),
            ),
              flex: 2, //2เท่า
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Align(
                  child: Text('Text Alignment'),
                  alignment: Alignment.center,
                ),
              ),
              flex: 1,
            ),
          ],
        );
      }
    }