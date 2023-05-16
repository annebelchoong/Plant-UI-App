import 'package:dataflowdevtest/widgets/list_items.dart';
import 'package:dataflowdevtest/widgets/shop_plants.dart';
import 'package:flutter/material.dart';

class ShopPlanListView extends StatelessWidget {
  ShopPlanListView({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        thickness: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Shop Plants - Icon Main.png",
              scale: 2.0,
            ),
            Expanded(
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                    colors: <Color>[Colors.transparent, Colors.grey],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
