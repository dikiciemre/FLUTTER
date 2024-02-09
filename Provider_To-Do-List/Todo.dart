import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yutup_deneme/Provider_To-Do-List/Task.dart';
import 'package:yutup_deneme/Provider_To-Do-List/Task_List_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        // TaskListModel'i sağlayan bir ChangeNotifierProvider'ı oluşturur.
        create: (context) => TaskListModel(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Kullanıcıya bir ipucu veren metin
            const Text(
              "Press and hold to delete..",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.5),
            ),
            // Yeni görev eklemek için metin alanı
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                hintText: 'Enter a task',
              ),
            ),
            const SizedBox(height: 16),
            // Yeni görev eklemek için düğme
            ElevatedButton(
              onPressed: () {
                // Metin alanı boş değilse yeni görev ekler
                if (_taskController.text.isNotEmpty) {
                  context.read<TaskListModel>().addTask(
                        Task(title: _taskController.text),
                      );
                  _taskController.clear(); // Metin alanını temizler
                }
              },
              child: const Text('Add Task'),
            ),
            const SizedBox(height: 16),
            // Görev listesini gösteren Consumer widget'ı
            Consumer<TaskListModel>(
              builder: (context, taskList, child) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: taskList.tasks.length,
                    itemBuilder: (context, index) {
                      final task = taskList.tasks[index];
                      return ListTile(
                        title: Text(task.title),
                        trailing: task.isCompleted
                            ? const Icon(Icons.check_box)
                            : IconButton(
                                icon: const Icon(Icons.check_box_outline_blank),
                                onPressed: () {
                                  // Görevi tamamla
                                  context
                                      .read<TaskListModel>()
                                      .completeTask(index);
                                },
                              ),
                        onLongPress: () {
                          // Görevi sil
                          context.read<TaskListModel>().removeTask(index);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
