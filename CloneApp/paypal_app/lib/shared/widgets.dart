import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';

buildAppbar(String tittle) {
  return AppBar(
    // ignore: deprecated_member_use
    brightness: Brightness.light,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      tittle,
      style: TextStyle(
        color: kPrimaryColor,
      ),
    ),
    automaticallyImplyLeading: false,
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
  );
}
