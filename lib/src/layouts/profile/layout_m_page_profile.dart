import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/app_bar_home.dart';
import 'package:mrtaparking/src/widgets/bottons/button_menu.dart';
import 'package:mrtaparking/src/widgets/menu_parking_profile.dart';

class LayoutMPageProfile extends StatelessWidget {
  const LayoutMPageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                AppBarHome(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "MRTA  PARKING",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: MenuParkingProfile(),
          ),
        ],
      ),
    );
  }
}
