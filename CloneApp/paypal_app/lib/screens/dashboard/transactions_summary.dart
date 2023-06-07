import 'package:flutter/material.dart';
import 'package:paypal_app/screens/dashboard/transaction.dart';
import 'package:paypal_app/screens/dashboard/transaction_item.dart';
import 'package:paypal_app/utils/constants.dart';

class TransactionsSummary extends StatelessWidget {
  const TransactionsSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transaction",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Transactions()),
                  );
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "03//06/2022",
            style: TextStyle(
              color: kGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  TransactionItem(
                    fullname: "Wisfie Syahbani",
                    status: "received",
                    imageUrl: "assets/images/user_0.jpg",
                    amount: "100.151",
                  ),
                  TransactionItem(
                    fullname: "Bayu",
                    status: "Sended",
                    imageUrl: "assets/images/user_0.jpg",
                    amount: "50.023",
                  ),
                  TransactionItem(
                    fullname: "Lala",
                    status: "received",
                    imageUrl: "assets/images/user_0.jpg",
                    amount: "1.151",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
