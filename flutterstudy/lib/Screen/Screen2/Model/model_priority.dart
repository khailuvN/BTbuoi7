import '../../Screen1/model/task.dart';

class PriorityButton {
  final String label;
  final Priority priority;


  PriorityButton({
    required this.label,
    required this.priority,

  });
}

List<PriorityButton> priorityList = [
  PriorityButton(label: 'High', priority:Priority.high),
  PriorityButton(label: 'Medium', priority: Priority.medium),
  PriorityButton(label: 'Low', priority: Priority.low),
];
