import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  Color? iconColor;

  AppBarHome({
    super.key,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Expanded(
              child: Container(
                width: 32,
                height: 32,
                child: Image.asset(
                  "assets/logo/mrt_en.png",
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.notifications_rounded,
                  color: iconColor ?? Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
