
import 'package:flutter/material.dart';
import 'package:nortodo/welcome_page.dart';

// import 'package:flutter/widgets.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToDo",
      theme: ThemeData(primarySwatch: Colors.blue,primaryColor: Colors.blue),
      home: WelcomePage(),  );
  }
}