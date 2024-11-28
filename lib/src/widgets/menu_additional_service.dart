import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/bottons/button_circular_name.dart';

class MenuAdditionalService extends StatelessWidget {
  const MenuAdditionalService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Additional services",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ButtonCircularName(
                icon: Image.asset(
                  "assets/icons/train.png",
                ),
                name: "MRTA Thailand",
              ),
              SizedBox(width: 8),
              ButtonCircularName(
                icon: Image.asset(
                  "assets/icons/taxi-ev.png",
                ),
                name: "EV Taxi",
              ),
              SizedBox(width: 8),
              ButtonCircularName(
                icon: Image.asset(
                  "assets/icons/electric-station.png",
                ),
                name: "EV Charger",
              ),
            ],
          ),
        )
      ],
    );
  }
}
