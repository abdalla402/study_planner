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
  // DYNAMIC: List of study goals managed in state
  final List<StudyGoal> _goals = [
    StudyGoal(title: 'Mobile App Development', hours: '3 hours'),
    StudyGoal(title: 'Network Security', hours: '2 hours'),
    StudyGoal(title: 'Database Systems', hours: '4 hours'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // STATIC: Top AppBar with required title
      appBar: AppBar(
        title: const Text('My Study Planner'),
      ),
      // DYNAMIC: Body displaying the list of goals dynamically
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Study Goals',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _goals.length,
                itemBuilder: (context, index) {
                  final goal = _goals[index];
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.book),
                      title: Text(goal.title),
                      subtitle: Text(goal.hours),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  