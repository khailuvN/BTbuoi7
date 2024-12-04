import 'package:flutter/material.dart';

import '../../Screen1/model/color_model.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap, required this.title});

  final VoidCallback onTap;
  final String  title;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.hexBA83DE,
              Colors.purple,
              Colors.cyan
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
