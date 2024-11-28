import 'package:flutter/material.dart';
import 'package:mrtaparking/src/layouts/profile/layout_m_page_profile.dart';
import 'package:mrtaparking/src/responsive/app_responsive.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppResponsive(
          mobile: LayoutMPageProfile(),
          tablet: LayoutMPageProfile(),
        ),
      ),
    );
  }
}
