import 'package:flutter/material.dart';
import 'package:paypal_app/screens/Pages/onboarding.dart';
import 'package:paypal_app/screens/settings/settings.item.dart';
import 'package:paypal_app/shared/widgets.dart';
import 'package:paypal_app/utils/constants.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: buildAppbar("Settings"),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/user_0.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "  Lala",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SettingsItem(
                tittle: "Contact Information",
                iconData: Icons.person_pin,
              ),
              SettingsItem(
                tittle: "Change Password",
                iconData: Icons.lock_open,
              ),
              SettingsItem(
                tittle: "Security",
                iconData: Icons.security,
              ),
              SettingsItem(
                tittle: "Fees",
                iconData: Icons.currency_exchange,
              ),
              SettingsItem(
                tittle: "Notifications",
                iconData: Icons.notifications_active_outlined,
              ),
              SettingsItem(
                tittle: "Support",
                iconData: Icons.support,
              ),
              SettingsItem(
                tittle: "FAQ",
                iconData: Icons.help_center,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Onboarding(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
