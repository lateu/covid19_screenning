import 'package:flutter/material.dart';
import 'package:checkin/MainDrawer.dart';
import 'package:checkin/QuiZ.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: implement build

      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("Welcome on the screening form"),
        //backgroundColor: Colors.indigo,
        backgroundColor: Colors.green[400],
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
        color: Colors.indigo,
          textColor: Colors.white,
          onPressed: () {
            //Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz()));
          },
          child: Text('Start', style: TextStyle(fontSize: 22)),
        )
         ],
        ),

      ),

      //child: Text('Welcome to My APP') ,
    );
  }
}
