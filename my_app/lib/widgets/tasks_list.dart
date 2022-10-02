import 'package:flutter/material.dart';
import 'package:my_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:my_app/models/task_data.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class TasksList extends StatelessWidget {
  // SharedPreferences ?prefs;
  const TasksList({Key? key}) : super(key: key);

//   setupTodo() async{
//     prefs = await SharedPreferences.getInstance();
//     String? stringTodo = prefs?.getString('todo');
//     List todoList = jsonDecode(stringTodo!);
//     for (var todo in todoList) {
//       setState(() {
//         todos.add(todo().fromJson(todo));
//       });
//     }
//   }

//   void saveTodo() {
//     List items = todos.map((e) => e.toJson()).toList();
//     prefs.setString('todo', jsonEncode(items));
//   }


//   @override
//   void initState() {
//     super.initState();
//     setupTodo();
//   }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },

              tapCallback: () {
                taskData.editTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}