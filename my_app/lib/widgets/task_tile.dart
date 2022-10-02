import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;
  final VoidCallback tapCallback;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback,
      required this.tapCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tapCallback,
      contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          // fontWeight: FontWeight.w500,
          fontFamily: 'Open Sans',
          fontSize: 19,
          color: Colors.white,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blue,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
