// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:paypal_app/shared/recent_item.dart';
import 'package:paypal_app/utils/constants.dart';

class Recent extends StatelessWidget {
  var navigateTo;

  Recent({super.key, this.navigateTo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RecentItem(
                navigateTo: navigateTo,
                imageUrl: "assets/images/user_0.jpg",
              ),
              RecentItem(
                navigateTo: navigateTo,
                imageUrl: "assets/images/user_1.jpg",
              ),
              RecentItem(
                navigateTo: navigateTo,
                imageUrl: "assets/images/user_2.jpg",
              ),
              RecentItem(
                navigateTo: navigateTo,
                imageUrl: "assets/images/user_3.jpg",
              ),
              RecentItem(
                navigateTo: navigateTo,
                imageUrl: "assets/images/user_4.jpg",
              ),
            ],
          )
        ],
      ),
    );
  }
}
