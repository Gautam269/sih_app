//import 'package:flutter/material.dart';
//import 'main_page.dart';
//
//class MyApp extends StatelessWidget {
//  final appTitle = 'BelieVid';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: appTitle,
//      theme: ThemeData(primarySwatch: Colors.purple),
//      home: MainPage(title: appTitle,),
//      debugShowCheckedModeBanner: false,
//    );
//  }
//}
//
//class FirstPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new RaisedButton(
//                child: Text("Image Analysis"),
//                elevation: 5.0,
//                onPressed: () {
//                  Navigator.push(context, new MaterialPageRoute(builder: (context) => MainPage()));
//                }
//            ),
//            new RaisedButton(
//                child: Text("Video Analysis"),
//                elevation: 5.0,
//                onPressed: () {Navigator.push(context, new MaterialPageRoute(builder: (context) => MainPage()));}
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
