import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/bottons/button_menu.dart';

class MenuParkingProfile extends StatelessWidget {
  const MenuParkingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          left: 18,
          bottom: 24,
          right: 18,
        ),
        child: Column(
          children: [
            ButtonMenu(
              onPressed: () {},
              iconLeft: Icon(Icons.person_rounded),
              text: Text(
                "Personal",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              iconRight: Icon(
                Icons.keyboard_arrow_right_rounded,
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              thickness: 0.6,
              indent: 36,
              endIndent: 20,
              height: 4,
            ),
            ButtonMenu(
              onPressed: () {},
              iconLeft: Icon(Icons.card_membership_rounded),
              text: Text(
                "Member",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              iconRight: Icon(
                Icons.keyboard_arrow_right_rounded,
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              thickness: 0.6,
              indent: 36,
              endIndent: 20,
              height: 4,
            ),
            ButtonMenu(
              onPressed: () {},
              iconLeft: SizedBox(
                width: 24,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 6,
                  ),
                  child: Image.asset(
                    "assets/icons/find_car.png",
                  ),
                ),
              ),
              text: Text(
                "Find my car",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              iconRight: Icon(
                Icons.keyboard_arrow_right_rounded,
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              thickness: 0.6,
              indent: 36,
              endIndent: 20,
              height: 4,
            ),
            ButtonMenu(
              onPressed: () {},
              iconLeft: Icon(
                Icons.perm_contact_cal_rounded,
              ),
              text: Text(
                "Contact",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              iconRight: Icon(
                Icons.keyboard_arrow_right_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
