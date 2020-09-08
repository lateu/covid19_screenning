import 'package:flutter/material.dart';

class DeveloperForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.indigoAccent, Colors.blueAccent])),
            child: Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/author.jpg"),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Name: Richard Lateu',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              //Navigator.of(context).pop();
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz()));
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Prof: Software engineer',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              //Navigator.of(context).pop();
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Weather()));
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'porfolio:https://lateu.github.io',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              //Navigator.of(context).pop();
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text(
              'Phone: +1 404 259 1841',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              //Navigator.of(context).pop();
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>CameraP()));
            },
          ),
        ],
      ),
    )
    ;
  }
}