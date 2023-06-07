import 'package:flutter/material.dart';
import 'package:paypal_app/screens/dashboard/option_pill.dart';
import 'package:paypal_app/screens/dashboard/transaction_item.dart';
import 'package:paypal_app/shared/custom_field.dart';
import 'package:paypal_app/utils/constants.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Transactions",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                "assets/icons/bell.png",
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            CustomField(
              hinttext: "Name , Email or Mobile Phone",
              iconData: Icons.search,
              label: "Search",
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                OptionPill(text: "All", selected: true),
                OptionPill(text: "Payment In", selected: false),
                OptionPill(text: "Payment Out", selected: false),
              ],
            ),
            const SizedBox(
              height: 16,
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Pending",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "03/12/2022",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TransactionItem(
                      fullname: "Wisfie Syahbani",
                      status: "received",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "100.151",
                    ),
                    const TransactionItem(
                      fullname: "Bayu",
                      status: "Sended",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "50.023",
                    ),
                    const TransactionItem(
                      fullname: "Lala",
                      status: "received",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "1.151",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Divider(
                      color: kPrimaryColor,
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Complete",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "03/12/2022",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TransactionItem(
                      fullname: "Wisfie Syahbani",
                      status: "received",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "100.151",
                    ),
                    const TransactionItem(
                      fullname: "Bayu",
                      status: "Sended",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "50.023",
                    ),
                    const TransactionItem(
                      fullname: "Lala",
                      status: "received",
                      imageUrl: "assets/images/user_0.jpg",
                      amount: "1.151",
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
