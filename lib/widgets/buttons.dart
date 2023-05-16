import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/Button - Shop.png",
            scale: 2.0,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/Button - Services.png",
            scale: 2.0,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/Button - Posts.png",
            scale: 2.0,
          ),
        ),
      ],
    );
  }
}
