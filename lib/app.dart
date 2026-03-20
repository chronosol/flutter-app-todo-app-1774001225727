import 'package:flutter/material.dart';
import 'screens/todo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(brightness: Brightness.light, primarySwatch: Colors.blue).copyWith(
          secondary: Colors.blueAccent,
          surface: Colors.white,
        ),
      ),
      home: const TodoScreen(),
    );
  }
}
