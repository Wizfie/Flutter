import 'package:flutter/material.dart';
import 'package:paypal_app/screens/Pages/login.dart';
import 'package:paypal_app/screens/Pages/master.dart';
import 'package:paypal_app/shared/custom_field.dart';
import 'package:paypal_app/shared/rounded_button.dart';
import 'package:paypal_app/utils/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                      "Sign Up",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const CustomField(
                      hinttext: "Fullname",
                      iconData: Icons.person_outline,
                      label: 'Fullname',
                    ),
                    const CustomField(
                      hinttext: "Email",
                      iconData: Icons.alternate_email,
                      label: 'Email',
                    ),
                    const CustomField(
                      hinttext: "Mobile number",
                      iconData: Icons.phone,
                      label: 'Mobile number',
                    ),
                    const CustomField(
                      hinttext: "Create Password",
                      iconData: Icons.lock_clock_outlined,
                      label: 'Password',
                    ),
                    const CustomField(
                      hinttext: "Confirm Password",
                      iconData: Icons.lock_clock_outlined,
                      label: 'Password',
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    RoundedButton(
                      text: "Sign Up",
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
                      "Log In ",
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
                        Text("Already  have account ?",
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
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          },
                          child: Text(
                            "Log In",
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
