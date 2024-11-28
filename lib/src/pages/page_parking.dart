import 'package:flutter/material.dart';
import 'package:mrtaparking/src/layouts/parking/layout_m_page_parking.dart';
import 'package:mrtaparking/src/responsive/app_responsive.dart';

class PageParking extends StatefulWidget {
  const PageParking({super.key});

  @override
  State<PageParking> createState() => _PageParkingState();
}

class _PageParkingState extends State<PageParking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppResponsive(
          mobile: LayoutMPageParking(),
          tablet: LayoutMPageParking(),
        ),
      ),
    );
  }
}
