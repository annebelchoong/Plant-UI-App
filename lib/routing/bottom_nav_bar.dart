import 'package:dataflowdevtest/routing/home_page.dart';
import 'package:dataflowdevtest/routing/mall_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const MallPage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar:
          // Container(
          //   decoration: BoxDecoration(
          //     boxShadow: <BoxShadow>[
          //       BoxShadow(
          //         color: Color(0xFFCBCBCB),
          //         blurRadius: 10,
          //       ),
          //     ],
          //   ),
          //   child: NavigationBar(
          //     selectedIndex: _currentIndex,
          //     height: 70,
          //     onDestinationSelected: (int newIndex) {
          //       setState(() {
          //         _currentIndex = newIndex;
          //       });
          //     },
          //     destinations: [
          //       NavigationDestination(
          //         icon: Image.asset(
          //           'assets/Nav Icon - Home.png',
          //           scale: 2,
          //         ),
          //         // ImageIcon(
          //         //   AssetImage('assets/Nav Icon - Home.png'),
          //         //   color: Colors.grey,
          //         // ),
          //         selectedIcon: Image.asset(
          //           'assets/Nav Icon - Home Green.png',
          //           scale: 2,
          //         ),
          //         label: 'Home',
          //       ),
          //       NavigationDestination(
          //         icon: Image.asset(
          //           'assets/Nav Icon - Mall.png',
          //           scale: 2,
          //         ),
          //         // ImageIcon(
          //         //   AssetImage('assets/Nav Icon - Home.png'),
          //         //   color: Colors.grey,
          //         // ),
          //         selectedIcon: Image.asset(
          //           'assets/Nav Icon - Mall Green.png',
          //           scale: 2,
          //         ),
          //         label: 'Mall',
          //       ),
          //       NavigationDestination(
          //         icon: Image.asset(
          //           'assets/Nav Icon - Discover.png',
          //           scale: 2,
          //         ),
          //         label: 'Discover',
          //       ),
          //       NavigationDestination(
          //         icon: Image.asset(
          //           'assets/Nav Icon - Inbox.png',
          //           scale: 2,
          //         ),
          //         label: 'Inbox',
          //       ),
          //       NavigationDestination(
          //         icon: Image.asset(
          //           'assets/Nav Icon - Account.png',
          //           scale: 2,
          //         ),
          //         label: 'Account',
          //       ),
          //     ],
          //   ),
          // ),
          Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFCBCBCB),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (index) => _changeTab(index),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: const Color(0xFF244B3A),
          items: [
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Home Green.png',
                  scale: 2,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Home.png',
                  scale: 2,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Mall Green.png',
                  scale: 2,
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/Nav Icon - Mall.png',
                  scale: 2,
                ),
              ),
              label: 'Mall',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Discover.png',
                  scale: 2,
                ),
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Inbox.png',
                  scale: 2,
                ),
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/Nav Icon - Account.png',
                  scale: 2,
                ),
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
