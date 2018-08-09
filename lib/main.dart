import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String radioBoxValue;
  bool checkBoxValue2 = false;
  bool checkBoxValue3 = false;

  String actionText = "Default";
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold(
          appBar: new AppBar(
              title: new Center(
                child: new Text("Checkbox"),
              ),
              actions: <Widget>[]),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: "premier",
                          groupValue: radioBoxValue,
                          onChanged: (String newValue) {
                            setValue(newValue);
                          },
                        ),
                        new Text("First"),
                      ],
                    )),
                new Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: "second",
                          groupValue: radioBoxValue,
                          onChanged: (String newValue) {
                            setValue(newValue);
                          },
                        ),
                        new Text("Second"),
                      ],
                    )),
              ],
            ),
          )),
    );
  }

  void setValue(String newValue) {
    setState(() {
      radioBoxValue = newValue;
      print(radioBoxValue);
    });
  }
}
