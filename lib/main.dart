import 'package:flutter/material.dart';
import 'todo_list.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'TO DO LIST',
            ),
          ),
        ),
        body: const ToDoList(),
      ),
    );
  }
}