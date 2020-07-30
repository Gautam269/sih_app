import 'package:flutter/material.dart';
import 'package:sih_believid_app/image_analysis.dart';
import 'package:sih_believid_app/video_analysis.dart';

class MyApp extends StatelessWidget {
  final appTitle = 'BelieVid';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(title: appTitle,),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  final String title;

  const MainPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Welcome to BeliedVed'),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('images/believed_image.jpg',
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 30),
            RaisedButton(
                child: Text("Image Analysis"),
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => ImgAnl()));
                }
            ),
            const SizedBox(height: 30),
            new RaisedButton(
                child: Text("Video Analysis"),
                elevation: 5.0,
                onPressed: () {Navigator.push(context, new MaterialPageRoute(builder: (context) => VidAnl()));}
            ),
          ],
        ),
      ),
//      drawer: Drawer(
//        child: ListView(
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                    image: AssetImage("images/believed_image.jpg"),
//                    fit: BoxFit.fill,
//                  ),
//                  color: Colors.purple
//              ), child: null,
//            ),
//            createDrawerBodyItem(icon: Icons.image,
//              text: 'Image Analysis',
//              onTap: () {
//              Navigator.push(context, new MaterialPageRoute(builder: (context) => ImgAnl())
//              );
//              },
//            ),
//            createDrawerBodyItem(
//              icon: Icons.videocam,
//              text: 'Video Analysis',
//              onTap: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => VidAnl())
//                );
//                },
//            ),
//            ListTile(
//              title: Text('App 1.0.0'), onTap: () { Navigator.pop(context); },
//            ),
//          ],
//        ),
//      ),
    );
  }

//  createDrawerBodyItem({IconData icon, String text, GestureTapCallback onTap}) {
//    return ListTile(
//      title: Row(
//        children: <Widget>[
//          Icon(icon),
//          Padding(
//            padding: EdgeInsets.only(left: 8.0),
//            child: Text(text),
//          )
//        ],
//      ),
//      onTap: onTap,
//    );
//  }
}

