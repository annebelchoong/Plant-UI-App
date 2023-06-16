import 'package:flutter/material.dart';

class MallTile1 extends StatelessWidget {
  const MallTile1({super.key});

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
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            child: Image.asset(
              "assets/Image.jpg",
              scale: 2.0,
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
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "RM 100.00",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF00894D),
                    ),
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
