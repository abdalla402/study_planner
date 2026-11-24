import 'package:flutter/material.dart';
void main(){
  runApp(const MyStudyPlannerApp());
}
// STATIC: Main application widget
  class MyStudyPlannerApp extends
  StatelessWidget{
    const 
    MyStudyPlannerApp({super.key});
    @override
    Widget build(BuildContext context){
      return MaterialApp(
       debugShowCheckedModeBanner:false,
        title: 'My Study Planner'
        home: const StudyPlannerHome(),
      );
    }
  
}