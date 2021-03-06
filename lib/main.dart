import "package:flutter/material.dart";

import "./widgets/user_transaction.dart";

void main() {
  runApp(MyExpentionApp());
}

class MyExpentionApp extends StatefulWidget {
  @override
  _MyExpentionAppState createState() => _MyExpentionAppState();
}

class _MyExpentionAppState extends State<MyExpentionApp> {
  final titileController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple.shade300,
              title: Text("MyExpension",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: null,
                  color: Colors.black,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        alignment: Alignment.bottomRight,
                        child: UserTransaction()),
                  ]),
            )));
  }
}
