import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';
import '../../Screen1/model/colors.dart';
import '../Model/model_priority.dart';

class Priority extends StatefulWidget {
  final String title;

  const Priority({super.key, required this.title});

  @override
  State<Priority> createState() => _PriorityState();
}

class _PriorityState extends State<Priority> {
  String selectedPriority = 'High';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: priorityList.map((priorityButton) {
                  ColorModel? colorModel = colorList.firstWhere(
                        (color) => color.priority == priorityButton.priority,
                    orElse: () => ColorModel(color: Colors.grey, priority: priorityButton.priority),
                  );

                  return Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colorModel.color,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedPriority = priorityButton.label;
                        });
                        if (kDebugMode) {
                          print('Selected Priority: ${priorityButton.label}');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.hex181818,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      child: Text(
                        priorityButton.label,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
