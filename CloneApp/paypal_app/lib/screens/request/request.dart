import 'package:flutter/material.dart';
import 'package:paypal_app/screens/request/request_from.dart';
import 'package:paypal_app/shared/contacts.dart';
import 'package:paypal_app/shared/custom_field.dart';
import 'package:paypal_app/shared/recent.dart';
import 'package:paypal_app/shared/widgets.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar("Request Money"),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomField(
              hinttext: "Name , Email, or Mobile Number",
              iconData: Icons.search,
              label: "Search",
            ),
            Recent(
              navigateTo: const RequestFrom(),
            ),
            Expanded(
                child: Contacts(
              navigateTo: const RequestFrom(),
            ))
          ],
        ),
      ),
    );
  }
}
