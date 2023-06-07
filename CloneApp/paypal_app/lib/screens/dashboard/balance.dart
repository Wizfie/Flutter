import 'package:flutter/material.dart';
import 'package:paypal_app/screens/dashboard/balance_item.dart';
import 'package:paypal_app/shared/rounded_button.dart';
import 'package:paypal_app/utils/constants.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

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
          "Balance",
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  r"2,2151.12",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "Your balance",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: kPrimaryColor,
                height: 1,
                thickness: 0.3,
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: const [
                      BalanceItem(
                        currency: 'USD',
                        conversion: '41,131',
                        money: '1,111',
                      ),
                      BalanceItem(
                        currency: 'AUD',
                        conversion: '41,131',
                        money: '1,111',
                      ),
                      BalanceItem(
                        currency: 'EUR',
                        conversion: '41,131',
                        money: '1,111',
                      ),
                      BalanceItem(
                        currency: 'GBP',
                        conversion: '41,131',
                        money: '1,111',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: kPrimaryColor,
                height: 1,
                thickness: 0.3,
              ),
              const SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: "Withdraw Money",
                onPress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
