import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mrtaparking/src/constant/utils.dart';
import 'package:mrtaparking/src/widgets/app_bar_home.dart';
import 'package:mrtaparking/src/widgets/bottons/button_stadium_white.dart';
import 'package:mrtaparking/src/widgets/menu_additional_service.dart';
import 'package:mrtaparking/src/widgets/menu_parking_service.dart';
import 'package:mrtaparking/src/widgets/news_carousel_slider.dart';

class LayoutMPageHome extends StatelessWidget {
  const LayoutMPageHome({super.key});

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
                  height: 48,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 200,
                    maxWidth: 250,
                  ),
                  child: ButtonStadiumWhite(
                    onPressed: () {},
                    text: "Login",
                    textStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 200,
                    maxWidth: 250,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create account",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                MenuParkingService(),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          MenuAdditionalService(),
          SizedBox(
            height: 24,
          ),
          NewsCarouselSlider(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
