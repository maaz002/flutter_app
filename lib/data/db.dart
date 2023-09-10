import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference a box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("ToDoList");
  }

  //update the db
  void updataData() {
    _myBox.put("ToDoList", toDoList);
  }
}
