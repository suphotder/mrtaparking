import 'package:flutter/material.dart';
import 'package:mrtaparking/src/constant/dimensions.dart';

class AppResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  const AppResponsive({super.key, required this.mobile, required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tabletWidth) {
          return mobile;
        } else {
          return tablet;
        }
      },
    );
  }
}
