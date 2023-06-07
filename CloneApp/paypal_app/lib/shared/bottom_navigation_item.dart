import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';

class BottomNavigationItem extends StatelessWidget {
  final String imagUrl;
  final String text;
  final bool selected;
  final Function onPress;

  const BottomNavigationItem(
      {super.key, required this.imagUrl,
      required this.text,
      required this.selected,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(
              imagUrl,
              color: selected ? kPrimaryColor : Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: selected ? kPrimaryColor : Colors.grey[400],
            ),
          )
        ],
      ),
    );
  }
}
