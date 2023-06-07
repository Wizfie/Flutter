// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:paypal_app/shared/contacts_item.dart';
import 'package:paypal_app/utils/constants.dart';

class Contacts extends StatelessWidget {
  var navigateTo;

  Contacts({super.key, this.navigateTo});
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
            "Contacts",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_0.jpg",
                  fullname: "Wisfie Syah",
                ),
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_2.jpg",
                  fullname: "Wisfie Syah",
                ),
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_3.jpg",
                  fullname: "Wisfie Syah",
                ),
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_4.jpg",
                  fullname: "Wisfie Syah",
                ),
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_5.jpg",
                  fullname: "Wisfie Syah",
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
