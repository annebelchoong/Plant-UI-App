import 'package:dataflowdevtest/util/app_colors.dart';
import 'package:flutter/material.dart';

class NewServiceTiles extends StatelessWidget {
  const NewServiceTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 298,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: const Color(0xFFCBCBCB),
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: Image.asset(
              "assets/Image.jpg",
              scale: 2.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Lorem Ipsum dolor sit amet consectur",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "RM 10.00",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.greenColor5,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
