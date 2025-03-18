// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:personal_finance/controllers/dashboard_controller.dart';
import 'package:personal_finance/stores/dashboard/dashboard_store.dart';
import 'package:personal_finance/views/dashboard/widgets/cards_total_summary_bills.dart';

class DashboardPage extends StatefulWidget {
  final DashboardController dashboardController;

  const DashboardPage({
    super.key,
    required this.dashboardController,
  });

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    widget.dashboardController.getDashboardSummary();
  }

  DashboardStore get store => widget.dashboardController.store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CardsTotalSummaryBills(
                dashboardStore: store,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
