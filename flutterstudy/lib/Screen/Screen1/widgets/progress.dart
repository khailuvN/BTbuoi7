import 'package:flutter/material.dart';
import '../model/color_model.dart';

class Task {
  final String name;
  final bool completed;

  Task({required this.name, required this.completed});
}

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    const double progressValue = 0.66; // Giá trị tiến trình (66%)

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.hex181818,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Daily Task',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '2/3 Task Completed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  'You are almost done, go ahead',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ),
              ),
              const Text(
                '66%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),

          Stack(
            children: [

              Container(
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFD8BFD8),
                    width: 2,
                  ),
                  color: const Color(0xFFD8BFD8), // Màu nền
                ),
              ),

              FractionallySizedBox(
                widthFactor: progressValue,
                child: Container(
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: AppColors.hexBA83DE,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
