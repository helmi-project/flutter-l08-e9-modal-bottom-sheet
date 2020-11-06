import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          alignment: Alignment.topCenter,
          child: Text(
            'Android ATC',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modal Bottom Sheet Widget'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Modal Botton Sheet',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        onPressed: () {
                          _showModalBottomSheet(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
