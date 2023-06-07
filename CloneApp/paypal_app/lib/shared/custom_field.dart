import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';

class CustomField extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final String label;

  const CustomField(
      {super.key,
      required this.hinttext,
      required this.iconData,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: kGreyColor,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 14,
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
          labelText: label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Icon(
              iconData,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
