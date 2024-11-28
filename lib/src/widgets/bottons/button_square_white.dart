import 'package:flutter/material.dart';

class ButtonSquareWhite extends StatelessWidget {
  Widget icon;
  Widget text;
  ButtonStyle? bottonStyle;
  TextStyle? textStyle;

  ButtonSquareWhite({
    super.key,
    required this.icon,
    required this.text,
    this.bottonStyle,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        children: [
          SizedBox(
            child: icon,
          ),
          text
        ],
      ),
      style: bottonStyle ??
          ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                return Colors.white;
              },
            ),
            overlayColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Theme.of(context).primaryColor.withOpacity(0.1);
                }
                return Colors.white;
              },
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            padding: WidgetStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
          ),
    );
  }
}
