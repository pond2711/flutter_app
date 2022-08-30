import 'package:flutter/material.dart';
import 'package:flutter_application_hello/NU.dart';
import 'package:flutter_application_hello/homepage.dart';
import 'package:flutter_application_hello/count_one_page.dart';
import 'package:flutter_application_hello/count_ten_page.dart';

main(){
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false, //remove debug sign
    title: "Pond's App",
    theme: ThemeData(
      primarySwatch: Colors.deepPurple, //set theme color
    ),
    home: const MainPage(title: "Pond's App"),
  );
 }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  int intCurrentIndex = 0; //เริ่มที่หน้าอะไร
  String strWelcome = "Hello";
  final screens = [
    HomePage(title: 'Home'),
    CountTen(
      title: 'Count Ten',
    ),
    CountOne(
      title: 'Count One',
    ),
    NU(title: 'NU',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: <Widget>[  //ทางขวา
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat), color: Colors.white,
          ),
        ],
      ),
      body: screens[intCurrentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: intCurrentIndex, //เริ่มต้นหน้า
          onTap: (index) => setState(() {
              intCurrentIndex = index;
            }),
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white70,
          unselectedItemColor: Colors.red,
          iconSize: 30,
          selectedFontSize: 18,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
          showUnselectedLabels: false,
        
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), 
              label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer_10_select), 
              label: 'Add 10'),
            BottomNavigationBarItem(
              icon: Icon(Icons.exposure_plus_1), 
              label: 'Add 1'),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined), 
              label: 'NU'),
            ]),
          );
        }
      }
