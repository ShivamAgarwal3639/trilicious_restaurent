import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'dashboard/dashboard_page.dart';
import 'Orders_page/orders_screen.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final List<Widget> _children = [
    const DashboardPage(),
    const OrdersPage(),
    const DashboardPage(),
    // const NearMe(groupType: "businesses"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedItemColor:  const Color(0xffFFA800),
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/home.svg',
              color: const Color(0xffFFA800),
            ),
            // activeIcon: Icon(Icons.message_outlined),
            icon: SvgPicture.asset(
              'assets/home.svg',
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/chat.svg',
              color: const Color(0xffFFA800),
            ),
            icon: SvgPicture.asset(
              'assets/chat.svg',
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/users.svg',
              color:  const Color(0xffFFA800),
            ),
            icon: SvgPicture.asset(
              'assets/users.svg',
            ),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
