import 'dart:ui';

import 'package:flutterstudy/Screen/Screen1/model/task.dart';

class ColorModel {
  final Color color;
  final String name;
  final Priority priority;

  ColorModel({
    required this.color,
    this.name = "",
    required this.priority,
  });
}

final List<ColorModel> colorList = [
  ColorModel(color: const Color(0xFFFFDCC8), name: "Peach", priority: Priority.high),
  ColorModel(color: const Color(0xFFC8E6FF), name: "Light Blue", priority: Priority.medium),
  ColorModel(color: const Color(0xFFDCC8E6), name: "Light Purple", priority: Priority.low),
];


void sortColorsByPriority() {
  colorList.sort((a, b) => a.priority.index.compareTo(b.priority.index));
}
