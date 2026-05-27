import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/app_state.dart';

class ExerciseFourScreen extends StatelessWidget {
  const ExerciseFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Exercise 4 - Scaffold & Theme'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('FloatingActionButton pressed')),
              );
            },
            child: const Icon(Icons.add),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: SwitchListTile(
                  title: const Text('Dark Mode'),
                  subtitle: const Text('Toggle app theme using ThemeMode'),
                  value: appState.isDarkMode,
                  onChanged: appState.setDarkMode,
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Scaffold structure demo',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Text('This screen includes AppBar, Body, FloatingActionButton, and ThemeData customization.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
