import 'package:flutter/material.dart';


class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  String emp_num;
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Setting form"),
        backgroundColor: Colors.green[400],
      ),

      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter your Emp. Num.'),
              controller: textEditingController,
              onChanged: (c){
                setState(() {
                  this.emp_num=c;
                });
              },
            ),
          ),
          RaisedButton(
            color: Colors.indigo,
            textColor: Colors.white,
            child: Text('Save',),
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherDetails(this.city)));
              textEditingController.text=" ";

            },
          )
        ],
        //child: Text('Weather here',style: TextStyle(fontSize: 22),),

      ),
    );
  }
}