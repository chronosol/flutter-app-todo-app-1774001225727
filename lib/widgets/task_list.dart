import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(int) toggleTaskCompletion;
  final Function(int) removeTask;

  const TaskList({
    Key? key,
    required this.tasks,
    required this.toggleTaskCompletion,
    required this.removeTask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          title: Text(
            task.title,
            style: TextStyle(
              decoration: task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          leading: Checkbox(
            value: task.isCompleted,
            onChanged: (_) => toggleTaskCompletion(index),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => removeTask(index),
          ),
        );
      },
    );
  }
}
