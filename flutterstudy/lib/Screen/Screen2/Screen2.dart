import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/back_title.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/button.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/create_task.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/priority.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/schedule.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/times.dart';
import 'package:flutterstudy/Screen/Screen2/widgets/widget_times.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hex020206,
<<<<<<< HEAD
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 11),
            child: Column(
              children: [
                const BackTitle(),
                const WidgetTimes(),
                const Schedule(title: 'Schedule'),
                const Times(),
                const Priority(title: 'Priority'),
                const createStask(),
                Button(onTap: () {}, title: 'Create Task'),
              ],
            ),
=======
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 11),
          child: Column(
            children: [
              const BackTitle(),
              WidgetTimes(),
              const Schedule(title:'Schedule'),
              const Times(),
              const Priority(title: 'Priority'),
              const createStask(),
            ],
>>>>>>> 0118c54 (khaihandsome)
          ),
        ),
      ),
    );
  }
}
