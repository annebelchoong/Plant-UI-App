import 'package:dataflowdevtest/widgets/list_items.dart';
import 'package:flutter/material.dart';

class ShopPlants extends StatelessWidget {
  ShopPlants({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: shopPlantIcons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(child: shopPlantIcons[index]['icon']),
              ],
            ),
          );
        },
      ),
    );
  }
}
