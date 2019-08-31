 import 'package:flutter/material.dart';
//zz...
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  bool isLoggedIn = true;
  Map userProfile;

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      body: Center(
        child: isLoggedIn
            ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Image.network("http://placehold.it/50x50",height: 50.0,width:50.0,),
              Text(""),
              OutlineButton(
                child: Text("Logout"),
                onPressed: (){},
                )
              ],
            )
          :OutlineButton(
          child: Text("Login With Facebook"),
          onPressed: (){},
      ),
      ),
    ),
    );
  }
}