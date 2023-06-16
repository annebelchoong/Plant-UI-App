import 'package:dataflowdevtest/util/app_colors.dart';
import 'package:dataflowdevtest/widgets/discover_1.dart';
import 'package:dataflowdevtest/widgets/discover_2.dart';
import 'package:dataflowdevtest/widgets/icon_buttons.dart';
import 'package:dataflowdevtest/widgets/new_services_tiles.dart';
import 'package:dataflowdevtest/widgets/shop_plants_list.dart';
import 'package:dataflowdevtest/widgets/top_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TopNav(),
            Image.asset("assets/Home Banner.jpg"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              color: Colors.white,
              child: const Buttons(),
            ),
            const IconButtons(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              color: const Color(0xFFF4F4F4),
              height: 490,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "NEW SERVICES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("View All"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      // top: 2.0,
                      bottom: 8.0,
                    ),
                    child: Text("Recommended based on your preference"),
                  ),
                  SizedBox(
                    height: 298,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(
                            top: 8.0,
                            left: 8.0,
                            bottom: 8.0,
                          ),
                          child: NewServiceTiles(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ShopPlanListView(),
                ],
              ),
            ),
            Container(
              height: 1420,
              width: 415,
              color: AppColors.greenColor3,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Trending Discoveries.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: StaggeredGrid.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 11,
                      crossAxisCount: 2,
                      children: const [
                        Discover1(),
                        Discover2(),
                        Discover2(),
                        Discover1(),
                        Discover1(),
                        Discover2(),
                        Discover2(),
                        Discover1(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    bottom: 4.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Text(
                    "LOCATION",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.greenColor4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    child: Image.asset("assets/Map.png"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sunway Pyramid",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.greenColor4,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Icon - Location.png",
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "10 Floor, Lorem Ipsum Mall, \nJalan ss23 Lorem, Selangor, Malaysia",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Icon - Clock.png",
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "10am - 10pm",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF707070),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The Gardens Mall",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.greenColor4,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Icon - Location.png",
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      const Text(
                        "10 Floor, Lorem Ipsum Mall, \nJalan ss23 Lorem, Selangor, Malaysia",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Icon - Clock.png",
                        scale: 2.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      const Text(
                        "10am - 10pm",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF707070),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
