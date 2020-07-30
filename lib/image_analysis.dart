import 'package:flutter/material.dart';
import 'package:sih_believid_app/Listview_ex.dart';
import 'package:sih_believid_app/main_page.dart';
import 'package:sih_believid_app/video_analysis.dart';

class ImgAnl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Analysis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Image.asset('images/imganl_image.jpg', fit: BoxFit.fill,scale: 0.3,),
            const SizedBox(height: 30),
            RaisedButton(
              padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("Enter URL"),
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => ListDisplay()),);
                }
            ),
            const SizedBox(height: 30),
            RaisedButton(
                padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("Upload Image"),
                elevation: 5.0,
                onPressed: () {}
            ),
            const SizedBox(height: 30),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("Twitter Search"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("MetaData"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("Reverse Image Search"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("Photoshop Detection"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("Forensic Analysis"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("Screenshot OCR"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GestureDetector(
              onTap: () { Navigator.push(context, new MaterialPageRoute(builder: (context) => MainPage()),);},
              child: DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/believed_image.jpg"),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.purple
              ),
              child: null,
            ),
            ),
            createDrawerBodyItem(
              icon: Icons.image,
              text: 'Image Analysis',
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => ImgAnl()),);
                },
            ),
            createDrawerBodyItem(
              icon: Icons.videocam,
              text: 'Video Analysis',
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => VidAnl()),);
                },
            ),
//            ListTile(
//              title: Text('App 1.0.0'), onTap: () { Navigator.pop(context); },
//            ),
          ],
        ),
      ),
    );
  }
}

createDrawerBodyItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}




