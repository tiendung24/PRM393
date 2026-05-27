import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/input_demo_state.dart';

class ExerciseTwoScreen extends StatelessWidget {
  const ExerciseTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 2 - Input Widgets')),
      body: Consumer<InputDemoState>(
        builder: (context, state, _) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                'Interactive controls without custom StatefulWidget',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Slider value: ${state.sliderValue.toStringAsFixed(0)}'),
                      Slider(
                        value: state.sliderValue,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        label: state.sliderValue.toStringAsFixed(0),
                        onChanged: state.setSliderValue,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: SwitchListTile(
                  title: const Text('Enable notifications'),
                  subtitle: Text(state.notificationsEnabled ? 'On' : 'Off'),
                  value: state.notificationsEnabled,
                  onChanged: state.setNotificationsEnabled,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: const Text('Beginner'),
                      value: 'Beginner',
                      groupValue: state.selectedLevel,
                      onChanged: (value) => state.setSelectedLevel(value!),
                    ),
                    RadioListTile<String>(
                      title: const Text('Intermediate'),
                      value: 'Intermediate',
                      groupValue: state.selectedLevel,
                      onChanged: (value) => state.setSelectedLevel(value!),
                    ),
                    RadioListTile<String>(
                      title: const Text('Advanced'),
                      value: 'Advanced',
                      groupValue: state.selectedLevel,
                      onChanged: (value) => state.setSelectedLevel(value!),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: () => state.pickDate(context),
                icon: const Icon(Icons.date_range),
                label: const Text('Open DatePicker'),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Selected level: ${state.selectedLevel}'),
                      const SizedBox(height: 8),
                      Text('Notifications: ${state.notificationsEnabled ? 'Enabled' : 'Disabled'}'),
                      const SizedBox(height: 8),
                      Text(
                        'Selected date: ${state.selectedDate == null ? 'Not selected' : '${state.selectedDate!.day}/${state.selectedDate!.month}/${state.selectedDate!.year}'}',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
