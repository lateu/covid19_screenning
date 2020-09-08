import 'package:flutter/material.dart';

import 'MainDrawer.dart';

class Quiz extends StatefulWidget {

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentquestion = 0;
  int score = 0;


  var quiz = [
    {
      'Title': 'Have you...',
      'answers': [
        {'ans': 'True'},
        {'ans': 'False'},
      ]
    },
    {
      'Title': 'Have you...',
      'answers': [
        {'ans': 'False'},
        {'ans': 'True'},
      ]
    },
    {
      'Title': 'Have you...',
      'answers': [
        {'ans': 'False'},
        {'ans': 'True'},
      ]
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("screening Quiz"),
        backgroundColor: Colors.green[400],
      ),
      body: (this.currentquestion >= quiz.length)
          ? Center(
          child: Column(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30.0,top: 100.0),

                  child: Text(
                    'Thank for completing your screening for today:'+"${DateTime.parse(new DateTime.now().toString()).month}-${DateTime.parse(new DateTime.now().toString()).day}-${DateTime.parse(new DateTime.now().toString()).year}",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                    ),

                  ),

              ),
              RaisedButton(
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    this.currentquestion = 0;
                    this.score = 0;
                  });
                },
                child: Text('Restart', style: TextStyle(fontSize: 22)),
              )
            ],
          ))
          : ListView(
        children: <Widget>[
          ListTile(
            title: Center(
                child: Text(
                  'Question ${currentquestion + 1}/${quiz.length}',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                )),
            //onTap: (){},
          ),
          ListTile(
            title: Text(
              quiz[currentquestion]['Title'],
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            //onTap: (){},
          ),
          ...(quiz[currentquestion]['answers']
          as List<Map<String, Object>>)
              .map((answer) {
            return ListTile(
              title: Padding(
                padding: const EdgeInsets.all(6.0),
                child: RaisedButton(
                  color: Colors.black38,
                  textColor: Colors.white,
                  onPressed: () {
                    if (answer['correct'] == true) {
                      ++this.score;
                    }
                    setState(() {
                      ++this.currentquestion;
                    });
                  },
                  child: Text(
                    answer['ans'],
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

