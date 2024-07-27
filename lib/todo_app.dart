import 'package:flutter/material.dart';
import 'package:user_interface_design/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen() ,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue ,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600
          )
        ),


      ),

      debugShowCheckedModeBanner: false,
    );
  }
}