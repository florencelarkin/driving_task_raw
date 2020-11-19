import 'main_page.dart';
import 'quit_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'data.dart';
import 'package:uuid/uuid.dart';

class ContinuationPage extends StatefulWidget {
  @override
  _ContinuationPageState createState() => _ContinuationPageState();
}

class _ContinuationPageState extends State<ContinuationPage> {

  var uuid = Uuid();

  Future<Data> _futureData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('Would you like to start a new trial?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
      ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                  color: Colors.green,
                  child: Text('YES'),
                  onPressed: () {
                    _futureData = createData(uuid.v1(), 'participant id test', 'data test');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage(),),);
              }),
              RaisedButton(
                  color: Colors.red,
                  child: Text('NO'),
                  onPressed: () {
                    _futureData = createData(uuid.v1(), 'participant id test', 'data test');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuitPage(),),);
                  }),
            ],
          ),

        ],
      ),
    );
  }
}