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
        title: 'My Study Planner',
        home: const StudyPlannerHome(),
      );
    }

  }// DYNAMIC: Data model for a study goal
class StudyGoal {
  String title;
  String hours;
  bool isCompleted;

  StudyGoal({
    required this.title,
    required this.hours,
    this.isCompleted = false,
  });
}

// DYNAMIC: Stateful home screen widget
class StudyPlannerHome extends StatefulWidget {
  const StudyPlannerHome({super.key});

  @override
  State<StudyPlannerHome> createState() => _StudyPlannerHomeState();
}

class _StudyPlannerHomeState extends State<StudyPlannerHome> {
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
  