// import 'package:your_app_path/services/auth_service.dart';

import 'package:flutter/material.dart';

class ToDoUserScreen extends StatefulWidget {
  const ToDoUserScreen({super.key});

  @override
  State<ToDoUserScreen> createState() => _ToDoUserScreenState();
}

class _ToDoUserScreenState extends State<ToDoUserScreen> {
  final TextEditingController _todoController = TextEditingController();
  final List<String> _todoList = [];

  void _addTodo() {
    final text = _todoController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _todoList.add(text);
      });
      _todoController.clear();
    }
  }

  void _deleteTodo(int index) {
    setState(() {
      _todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'My To-Do List',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              controller: _todoController,
              decoration: InputDecoration(
                hintText: 'Enter a task',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add, color: Colors.grey),
                  onPressed: _addTodo,
                ),
              ),
            ),
          ),
          Expanded(
            child: _todoList.isEmpty
                ? const Center(
                    child: Text(
                      'No tasks added yet',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )
                : ListView.builder(
                    itemCount: _todoList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: const Color.fromARGB(255, 184, 184, 184),
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03,
                          vertical: MediaQuery.of(context).size.height * 0.008,
                        ),
                        child: ListTile(
                         
                          title: Text(_todoList[index]),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteTodo(index),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
