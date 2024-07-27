import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_interface_design/add_new_todo_screen.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Todo List',

        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Todo title'),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Todo body'),
                  Text('Time'),
                ],
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_forever_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddNewTodoScreen(),),);
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add),
      ),
    );
  }
}
