// Görev listesi modeli aşağıda belirtilmiştir
import 'package:flutter/material.dart';
import 'package:yutup_deneme/Provider_To-Do-List/Task.dart';

class TaskListModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  // Görev ekleme alanı
  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  // Görev tamamlama alanı
  void completeTask(int index) {
    _tasks[index].isCompleted = true;
    notifyListeners();
  }

  // Görev silme alanu
  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
