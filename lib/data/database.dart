import 'package:hive/hive.dart';

class ToDoDataBase{

  List toDoList = [];

  // Reference the box
  final _myBox = Hive.box('mybox');

  // Run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do exercise", false],
    ];

  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}