import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sih_believid_app/image_analysis.dart';
import 'package:sih_believid_app/main_page.dart';

class VidAnl extends StatelessWidget {
  TextEditingController myController = TextEditingController();

  @override

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/my_file.txt');
  }

  Future<File> writeContent() async {
    final file = await _localFile;
    return file.writeAsString(myController.text);
  }

//  _save() async{
//    final directory = await getApplicationDocumentsDirectory();
//    final file = File('${directory.path}/my_file.txt');
//    await file.writeAsString(myController.text);
//  }

//  void dispose() {
//    myController.dispose();
//    super.dispose();
//  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Video Analysis'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
//            Image.asset('images/vidanl_image.gif',
//              width: 200,
//              height: 200,
//              fit: BoxFit.fill,
//            ),
            const SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 8,right: 8),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: "Enter the Youtube/MP4 URL here"),
                        controller: myController,
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        elevation: 5.0,
                        child: Text('Send'),
                        onPressed: () {
                          writeContent();
//                          return showDialog(
//                            context: context,
//                            builder: (context) {
//                              return AlertDialog(
//                                content: Text(myController.text),
//                              );
//                              },
//                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RaisedButton(
                padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("Upload your Video"),
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
                        child: Text("MetaData"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("DeepFake Detection"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                    RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text("KeyFrame"),
                        elevation: 5.0,
                        onPressed: () {}
                    ),
                  ],
                ),
              ],
            ),
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
              ), child: null,
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

