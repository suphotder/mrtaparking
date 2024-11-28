import 'package:flutter/material.dart';
import 'package:mrtaparking/src/layouts/home/layout_m_page_home.dart';
import 'package:mrtaparking/src/responsive/app_responsive.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppResponsive(
          mobile: LayoutMPageHome(),
          tablet: LayoutMPageHome(),
        ),
      ),
    );
  }
}
