import 'package:exam/screen3.dart';
import 'package:exam/screen2.dart';
import 'package:exam/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Task3.routename,
      routes: {
        home.routename: (context) => home(),
        task.routename: (context) => task(),
        Task3.routename:(context) => Task3(),
      }));
}
