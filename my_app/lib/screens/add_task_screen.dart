import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color.fromARGB(255, 68, 0, 113),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 68, 0, 113),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 24,
                color: Colors.white70,
              ),
            ),
            TextField(
              autofocus: true,
              style: const TextStyle(
                color: Color.fromARGB(255, 188, 234, 255),
                fontSize: 21,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: const Text('ADD'),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(179, 221, 165, 255),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
