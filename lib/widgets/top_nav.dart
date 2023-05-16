import 'package:dataflowdevtest/util/app_colors.dart';
import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF244B3A),
      child: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text("LOGO",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 44.0,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: const Text(
                    "NEXT APPOINTMENT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 0.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/Icon - Calender.png",
                      scale: 2.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    const Text(
                      "14 Oct 2020",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Icon -Clock.png",
                      scale: 2.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    const Text(
                      "12:00 PM",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Icon -Location.png",
                      scale: 2.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    const Text(
                      "123 Plant Street, 1/1 ...",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/Icon -Arrow.png",
                    scale: 1.5,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "CREDIT",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.greenColor1,
                            ),
                          ),
                          Text(
                            "RM100.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.greenColor1,
                            ),
                          ),
                        ],
                      ),
                      //cannot see
                      const SizedBox(
                        height: 45,
                        child: VerticalDivider(
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "POINTS",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.greenColor1,
                            ),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.greenColor1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                        child: VerticalDivider(
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "PACKAGE",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.greenColor1,
                            ),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.greenColor1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
