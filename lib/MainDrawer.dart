import 'package:flutter/material.dart';
import 'package:checkin/DeveloperForm.dart';
import 'package:checkin/SettingsForm.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(

      child: ListView(
        children: <Widget>[

          UserAccountsDrawerHeader(
            accountName:Text("RDL-soft"),
            accountEmail: Text("richardlateu@gmail.com"),
            decoration: BoxDecoration(color: Colors.green[700],),

          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Developer"),
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeveloperForm()));
            },

          ),
          ListTile(
            leading: Icon(Icons.settings_applications),

            title: Text("Settings"),
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsForm()));
            },
          ),

        ],
      ),
    );
  }

}