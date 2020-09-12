import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoeyflutterapp/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30.0,
                    ),
                  ),
              ),
              TextField(
                autofocus: true,  //automatic keyboard pop-up
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 10.0,
                      ),
                    ),
                    hintText: 'Enter a task',
                ),
              ),
              SizedBox(height: 20.0),
              FlatButton(
                child: Text('Add',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                )),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  //Add our task to the list - where we add this
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
