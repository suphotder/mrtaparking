import 'package:flutter/material.dart';
import 'package:mrtaparking/src/layouts/billing/layout_m_page_billing.dart';
import 'package:mrtaparking/src/responsive/app_responsive.dart';

class PageBilling extends StatefulWidget {
  const PageBilling({super.key});

  @override
  State<PageBilling> createState() => _PageBillingState();
}

class _PageBillingState extends State<PageBilling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppResponsive(
          mobile: LayoutMPageBilling(),
          tablet: LayoutMPageBilling(),
        ),
      ),
    );
  }
}
