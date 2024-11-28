import 'package:flutter/material.dart';

class ButtonStadiumWhite extends StatelessWidget {
  Function onPressed;
  ButtonStyle? style;
  TextStyle? textStyle;
  String text;
  double? fontSize;
  ButtonStadiumWhite({
    super.key,
    required this.onPressed,
    required this.text,
    this.style,
    this.textStyle,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: style ??
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
            fixedSize: WidgetStateProperty.all<Size>(
              Size(double.infinity, 30),
            ),
          ),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: textStyle ??
              TextStyle(
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}
