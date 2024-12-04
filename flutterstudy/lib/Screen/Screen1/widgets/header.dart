import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/widgets/task_item.dart';
import '../model/color_model.dart';
import '../model/task_model.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    'See All',
                    style: TextStyle(fontSize: 16, color: AppColors.hexBA83DE),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
