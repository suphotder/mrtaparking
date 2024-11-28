import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  Function onPressed;
  Widget iconLeft;
  Widget text;
  Widget iconRight;
  ButtonMenu({
    super.key,
    required this.onPressed,
    required this.iconLeft,
    required this.text,
    required this.iconRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Row(
          children: [
            iconLeft,
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: text,
            ),
            Container(
              width: 20,
              child: iconRight,
            ),
          ],
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.only(
            left: 8,
            top: 0,
            right: 8,
            bottom: 0,
          ),
        ),
      ),
    );
  }
}
