import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: AppColors.hex181818,
          prefixIcon: const Icon(Icons.search, color: Colors.white, size: 19),
          labelText: 'Search Task Here',
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 19,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
        keyboardType: TextInputType.text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
