import 'package:dataflowdevtest/util/app_colors.dart';
import 'package:flutter/material.dart';

class MallTile2 extends StatelessWidget {
  const MallTile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 315,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            child: Stack(
              children: [
                Image.asset(
                  "assets/Image.jpg",
                  scale: 2.0,
                ),
                Positioned(
                  right: 9,
                  top: 9,
                  child: Image.asset(
                    "assets/50�.png",
                    scale: 2.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 6.0,
                  ),
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
                Text(
                  "Lorem Ipsum dolor sit amet consectur adipiscing elit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.0,
                    bottom: 4.0,
                  ),
                  child: Text(
                    "RM 100.00",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF707070),
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                Text(
                  "RM 50.00",
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
