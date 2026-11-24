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
  // DYNAMIC: Dialog to add a new study goal
  void _showAddGoalDialog() {
    final titleController = TextEditingController();
    final hoursController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New Study Goal'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Subject / Goal'),
              ),
              TextField(
                controller: hoursController,
                decoration: const InputDecoration(labelText: 'Duration (e.g. 2 hours)'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    hoursController.text.isNotEmpty) {
                  setState(() {
                    _goals.add(
                      StudyGoal(
                        title: titleController.text,
                        hours: hoursController.text,
                      ),
                    );
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
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
      // DYNAMIC: Floating action button to trigger add dialog
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddGoalDialog,
        child: const Icon(Icons.add),
      ),
    );

  }
}
  