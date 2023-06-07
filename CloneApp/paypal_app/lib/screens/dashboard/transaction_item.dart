import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';

class TransactionItem extends StatelessWidget {
  final String fullname;
  final String status;
  final String imageUrl;
  final String amount;

  const TransactionItem({
    super.key,
    required this.fullname,
    required this.status,
    required this.imageUrl,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullname,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  "Payment  " + status,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Text(
            // ignore: prefer_interpolation_to_compose_strings
            (status == "received" ? "+" : "-") + r" $ " + amount + " USD",
            style: TextStyle(
              color: status == "received" ? Colors.green : Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
