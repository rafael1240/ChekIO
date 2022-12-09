//components
import 'package:flutter/material.dart';

//Viewss
import './views/ViewLogin/ViewLoginComponent.dart';


void main() { runApp(MyApp()); }

class MyApp extends StatelessWidget { 
  MyApp({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: const MyHomePage(), 
    ); 
  } 
}

class MyHomePage extends StatefulWidget { 
  const MyHomePage({Key? key}) : super(key: key);

  @override State createState() => _MyHomePageState(); 
}

class _MyHomePageState extends State {
  
  @override Widget build(BuildContext context) { 
    return ViewLoginComponent();
  } 
}