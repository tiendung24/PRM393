import 'package:flutter/material.dart';

/// State for Exercise 2 input controls.
///
/// This replaces the need for a custom StatefulWidget.
class InputDemoState extends ChangeNotifier {
  double _sliderValue = 40;
  bool _notificationsEnabled = true;
  String _selectedLevel = 'Beginner';
  DateTime? _selectedDate;

  double get sliderValue => _sliderValue;
  bool get notificationsEnabled => _notificationsEnabled;
  String get selectedLevel => _selectedLevel;
  DateTime? get selectedDate => _selectedDate;

  void setSliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }

  void setNotificationsEnabled(bool value) {
    _notificationsEnabled = value;
    notifyListeners();
  }

  void setSelectedLevel(String value) {
    _selectedLevel = value;
    notifyListeners();
  }

  Future<void> pickDate(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(now.year - 2),
      lastDate: DateTime(now.year + 2),
    );

    if (picked != null) {
      _selectedDate = picked;
      notifyListeners();
    }
  }
}
