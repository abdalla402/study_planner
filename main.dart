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
      // STATIC: Main body layout
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // STATIC: Heading above the goals list
            Text(
              'My Study Goals',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // STATIC: Three hard-coded goal cards
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Mobile App Development'),
                subtitle: Text('3 hours'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Network Security'),
                subtitle: Text('2 hours'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text('Database Systems'),
                subtitle: Text('4 hours'),
              ),
            ),
          ],
        ),
    ),
    // STATIC: Floating action button (does nothing yet)
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}