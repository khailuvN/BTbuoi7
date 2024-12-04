import 'package:flutter/material.dart';
import 'package:flutterstudy/Screen/Screen1/model/color_model.dart';

class Times extends StatelessWidget {
  const Times({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 77,
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Start Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.hex181818,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.access_time, color: AppColors.hexBA83DE),
                        SizedBox(width: 10),
                        Text(
                          '06 : 00 PM',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),

          Container(
            height: 77,
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'End Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.hex181818,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.access_time, color: AppColors.hexBA83DE),
                        SizedBox(width: 10),
                        Text(
                          '06 : 00 PM',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
