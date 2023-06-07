// ignore_for_file: unused_element, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:paypal_app/shared/rounded_button.dart';
import 'package:paypal_app/utils/constants.dart';
import 'package:paypal_app/utils/data.dart';

import 'login.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _totalPages; i++) {
      list.add(_indicator(i == _currentPage));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? kSecondaryColor : Colors.grey[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(
                  () {
                    _currentPage = page;
                  },
                );
              },
              children: getOnboardingPage()
                  .map((item) => rederPageItem(item))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(48),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 48,
              child: _currentPage != _totalPages - 1
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        Row(
                          children: _buildPageIndicator(),
                        ),
                        GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  : RoundedButton(
                      text: "Let's start",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rederPageItem(OnboardingPage page) {
    return Padding(
      padding: const EdgeInsets.all(48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              page.imageUrl,
              height: 250,
              fit: BoxFit.fitHeight,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 64,
          ),

          Center(
            child: Text(
              page.title,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
          ),

          // ignore: prefer_const_constructors
          SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              height: 1,
              width: 200,
              color: Colors.grey[300],
            ),
          ),

          // ignore: prefer_const_constructors
          SizedBox(
            height: 16,
          ),

          Center(
            child: Text(
              page.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kGreyColor,
                height: 1.6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
