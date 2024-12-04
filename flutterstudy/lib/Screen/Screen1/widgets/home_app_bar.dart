import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/app_images.dart';
import '../model/color_model.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            AppBar(
              backgroundColor: AppColors.hex020206,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              title: const Text(
                'You have got 5 tasks\ntoday to complete ✍️',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              titleSpacing: 20,
              actions: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(22.5)),
                  child: Image.asset(
                    AppImages.avatar,
                    width: 45,
                    height: 45,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(height: 20),
              ],
              centerTitle: false,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
