import 'package:flutter/material.dart';
import 'package:todolist/screens/home_screen.dart';
import 'package:todolist/config/config.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: const MyHomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}