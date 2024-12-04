enum Priority { high, medium, low }

class Task {
  final String title;
  final String date;
  final Priority priority;
  final bool completed;

  Task({
    required this.title,
    required this.date,
    required this.priority,
    required this.completed,
  });
}
