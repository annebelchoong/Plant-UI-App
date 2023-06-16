import 'package:dataflowdevtest/widgets/mall_tile_1.dart';
import 'package:dataflowdevtest/widgets/mall_tile_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MallPage extends StatelessWidget {
  const MallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4F4F4),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: 340,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    spreadRadius: 0.5,
                    blurRadius: 7,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Image.asset(
                    "assets/Icon - Search.png",
                    scale: 2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Salon",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10, bottom: 11),
                    ),
                  )),
                  Image.asset(
                    "assets/Icon - Filter.png",
                    scale: 2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: Image.asset(
                "assets/Icon - Arrow.png",
                scale: 2,
              ),
              onPressed: () {},
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 11.0,
              right: 11.0,
              top: 24.0,
              bottom: 60.0,
            ),
            child: StaggeredGrid.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 11,
              crossAxisCount: 2,
              children: const [
                MallTile1(),
                MallTile2(),
                MallTile1(),
                MallTile2(),
                MallTile1(),
                MallTile2(),
              ],
            ),
          ),
        ));
  }
}
