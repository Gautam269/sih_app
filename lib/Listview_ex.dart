import 'package:flutter/material.dart';

class ListDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              RaisedButton(
                onPressed: null,
                child: Text("Facebook"),
              ),
              Padding(padding: EdgeInsets.all(5.00)),
              RaisedButton(
                onPressed: null,
                child: Text("Google"),
              )
            ],
          ),
          ),
        ],
      ),
    );
  }
}



