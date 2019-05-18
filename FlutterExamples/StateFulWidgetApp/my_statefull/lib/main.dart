import 'package:flutter/material.dart';

void maiin() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {

  @override
  // This method Create State is compulsory
  MyButtonState createState() {
    return MyButtonState();
  }
}
// Variables of buttons
class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  String defaultText = "Spanish Number";
  

  void displaySpanishNumbers() {
    // Always Required Set State for setting any functionality.
    setState(() {
      defaultText = spanishNumbers[counter];  
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold for the basic layout of your App.
    return Scaffold(
      // App Properties.
      appBar: AppBar(
        title: Text('My Stateful App'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(defaultText, style: TextStyle(fontSize: 30.0),),
              Padding(padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                child: Text('Call Spanish Numbers'),
                onPressed: displaySpanishNumbers,
                color: Colors.orange,
                splashColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );

  }

}

