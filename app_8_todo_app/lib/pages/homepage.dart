import 'package:app_8_todo_app/data/database.dart';
import 'package:app_8_todo_app/util/dialog_box.dart';
import 'package:app_8_todo_app/util/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //reference the hive box
  final _myBox = Hive.box('myBox');
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState() {
    //if this is the first time ever opening the app, then create default data
    if(_myBox.get("TODOLIST") == null){
      db.createInitialData();
    }else {
      db.loadData();
    }
    super.initState();
  }

  final _controller = TextEditingController();
  void saveNewTask(){
    setState(() {
      db.toDoList.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }
  void createNewTask() {
    showDialog(context: context, builder:(context) {
      return DialogBox(
        controller: _controller, 
        onSave: saveNewTask,
        onCancel: Navigator.of(context).pop,
      );
    },);
    db.updateDataBase();    
  }
  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text("TO DO", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        elevation: 3.0, 
        shadowColor: Colors.black, 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(taskName: db.toDoList[index][0],
           taskCompleted: db.toDoList[index][1],
            onChanged:(value) =>checkBoxChanged(value, index) ,
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}