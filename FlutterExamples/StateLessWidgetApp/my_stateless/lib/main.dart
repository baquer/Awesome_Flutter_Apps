import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Flutter App',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.blue,
  ),
  home: Scaffold(
    appBar: AppBar(
      title: Text('Flutter'),
      backgroundColor: Colors.black,
    ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hey This Is Awesome'),
          Text('I Am Baquer'),
          RaisedButton(
            onPressed: (){},
            child: Text('Signup'),
            color: Colors.orange,
            splashColor: Colors.blue,
          )
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(
        Icons.add_a_photo,
      ),
    ),
  ),
);
;
  }

}