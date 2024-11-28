import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/app_bar_home.dart';

class LayoutMPageBilling extends StatelessWidget {
  const LayoutMPageBilling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarHome(
          iconColor: Theme.of(context).primaryColor,
        ),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
