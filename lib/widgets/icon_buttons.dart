import 'package:dataflowdevtest/widgets/list_items.dart';
import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttonIcons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(child: buttonIcons[index]['icon']),
              ],
            ),
          );
        },
      ),
    );
  }
}
