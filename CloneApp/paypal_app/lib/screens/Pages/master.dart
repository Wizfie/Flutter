import 'package:flutter/material.dart';
import 'package:paypal_app/screens/dashboard/dasboard.dart';
import 'package:paypal_app/screens/request/request.dart';
import 'package:paypal_app/screens/send/send.dart';
import 'package:paypal_app/screens/settings/settings.dart';
import 'package:paypal_app/shared/bottom_navigation_item.dart';

class Master extends StatefulWidget {
  const Master({super.key});

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  // ignore: non_constant_identifier_names
  List<bool> bottomNavigationItemStatus = [true, false, false, false];

  late Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = const Dashboard();
    });
  }

  setCurrentWidgetView(int index) {
    setState(() {
      switch (index) {
        case 0:
          currentWidgetView = const Dashboard();
          break;
        case 1:
          currentWidgetView = const Send();
          break;
        case 2:
          currentWidgetView = const Request();
          break;
        case 3:
          currentWidgetView = const Settings();
          break;
      }
      bottomNavigationItemStatus = [
        index == 0,
        index == 1,
        index == 2,
        index == 3,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 80,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 2,
                color: Colors.grey[300],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomNavigationItem(
                    imagUrl: "assets/icons/tile.png",
                    text: "Dasboard",
                    selected: bottomNavigationItemStatus[0],
                    onPress: () {
                      setCurrentWidgetView(0);
                    },
                  ),
                  BottomNavigationItem(
                    imagUrl: "assets/icons/send_money.png",
                    text: "Send",
                    selected: bottomNavigationItemStatus[1],
                    onPress: () {
                      setCurrentWidgetView(1);
                    },
                  ),
                  BottomNavigationItem(
                    imagUrl: "assets/icons/request_money.png",
                    text: "Request",
                    selected: bottomNavigationItemStatus[2],
                    onPress: () {
                      setCurrentWidgetView(2);
                    },
                  ),
                  BottomNavigationItem(
                    imagUrl: "assets/icons/settings.png",
                    text: "Settings",
                    selected: bottomNavigationItemStatus[3],
                    onPress: () {
                      setCurrentWidgetView(3);
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
