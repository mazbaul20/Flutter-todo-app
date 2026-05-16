import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ToDoPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
    );
  }

}