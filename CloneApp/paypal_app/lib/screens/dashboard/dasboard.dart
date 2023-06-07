import 'package:flutter/material.dart';
import 'package:paypal_app/screens/dashboard/balance_summary.dart';
import 'package:paypal_app/screens/dashboard/transactions_summary.dart';
import 'package:paypal_app/shared/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar("Dashboard"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BalanceSummary(),
            Expanded(
              child: TransactionsSummary(),
            ),
          ],
        ),
      ),
    );
  }
}
