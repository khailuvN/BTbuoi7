import 'package:flutter/material.dart';
import '../../Screen1/model/color_model.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 27),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: const TextStyle(color: Colors.white, fontSize: 19),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColors.hex181818,
                  floatingLabelBehavior: FloatingLabelBehavior.never, // Ẩn label khi nhập
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                width: 390,
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    alignLabelWithHint: true,
                    labelStyle: const TextStyle(color: Colors.white, fontSize: 19),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF181818),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 12,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never, // Ẩn label khi nhập
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
