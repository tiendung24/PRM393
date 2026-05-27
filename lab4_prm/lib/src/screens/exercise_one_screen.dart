import 'package:flutter/material.dart';

class ExerciseOneScreen extends StatelessWidget {
  const ExerciseOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 1 - Core Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Flutter UI Fundamentals',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Icon(
            Icons.phone_android,
            size: 72,
            color: Colors.indigo,
          ),
          SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?auto=format&fit=crop&w=1200&q=80',
              ),
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Icon(Icons.school, color: Colors.white),
              ),
              title: Text('PRM393 - Lab 4'),
              subtitle: Text('Core widgets: Text, Image, Icon, Card, ListTile'),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
