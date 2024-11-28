import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mrtaparking/src/pages/page_billing.dart';
import 'package:mrtaparking/src/pages/page_home.dart';
import 'package:mrtaparking/src/pages/page_parking.dart';
import 'package:mrtaparking/src/pages/page_profile.dart';

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  final List<Widget> pages = [
    PageHome(),
    PageParking(),
    PageBilling(),
    PageProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: selectedIndex != index,
      child: Navigator(
        key: navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) {
              return pages[index];
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: List.generate(4, (index) => _buildOffstageNavigator(index)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        selectedFontSize: 14,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/parking.svg',
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                  BlendMode.srcIn,
                ),
                width: 21,
              ),
              label: 'Parking'),
          BottomNavigationBarItem(
              icon: Icon(Icons.description_rounded), label: 'Billing'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
