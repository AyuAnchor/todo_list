import 'package:flutter/material.dart';
import 'package:my_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:my_app/models/task_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white,
          unselectedWidgetColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        home: const TaskScreen(),
      ),
    );
  }
}
