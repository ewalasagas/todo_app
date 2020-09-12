import 'package:flutter/material.dart';

//describe how ever task will be
class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone=false});

  void toggleDone() {
    isDone = !isDone;
  }
}