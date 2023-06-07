import 'package:flutter/material.dart';
import 'package:paypal_app/screens/Pages/master.dart';
import 'package:paypal_app/screens/Pages/signup.dart';
import 'package:paypal_app/shared/custom_field.dart';
import 'package:paypal_app/shared/rounded_button.dart';
import 'package:paypal_app/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const CustomField(
                      hinttext: "Email",
                      iconData: Icons.alternate_email,
                      label: 'Email',
                    ),
                    const CustomField(
                      hinttext: "Password",
                      iconData: Icons.lock_clock_outlined,
                      label: 'Password',
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    RoundedButton(
                      text: "Log In",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Master()),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do you have account ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kGreyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
