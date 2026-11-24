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
  // STATIC: Home screen widget
  class StudyPlannerHome extends StatelessWidget {
  const StudyPlannerHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STATIC: Top AppBar with required title
      appBar: AppBar(
        title: const Text('My Study Planner'),
      ),
    );
  }
}