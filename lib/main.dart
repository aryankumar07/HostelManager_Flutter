import 'package:flutter/material.dart';
import 'package:hostelmanager/screens/tab_screen.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: TabScreen(),
  ));
}