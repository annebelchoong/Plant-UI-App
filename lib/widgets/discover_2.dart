import 'package:flutter/material.dart';

class Discover2 extends StatelessWidget {
  const Discover2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 315,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
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
                    fontSize: 13,
                  ),
                ),
                Text(
                  "Lorem Ipsum dolor sit amet consectur adipiscing elit. Lorem  ipsum dolor sit amet",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
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
